#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <data_capture/ImageSave.h>
#include "data_capture/Num.h"
#define USE_IMAGE_TRANSPORT_SUBSCRIBER_FILTER 1

#if USE_IMAGE_TRANSPORT_SUBSCRIBER_FILTER
#  include <image_transport/subscriber_filter.h>
#else
#  include <sensor_msgs/Image.h>
#  include <message_filters/subscriber.h>
#endif
//>>>>>>>>>>>>>>>>>>Copyright (c) 2018 Robotmeta>>>>>>>>>>>>>>>>>>>>//
// Author: Xiaolong Li, lxiaol9@vt.edu, Aug 1st, 2018
//
// A ROS package for synchronized rgb-d image plus camera info subscriber
// and saving with realsense SR300, with class added;
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
static const std::string OPENCV_WINDOW1 = "RGB Image Window";
static const std::string OPENCV_WINDOW2 = "Depth Image Window";

class MyClass {
public:
  MyClass() :
    it_(nh_),
#if USE_IMAGE_TRANSPORT_SUBSCRIBER_FILTER
    orig_image_sub_( it_, "/camera/color/image_raw", 1 ),
    warp_image_sub_( it_, "/camera/depth/image_rect_raw", 1 ),
#else
    orig_image_sub_( nh_, "/camera/color/image_raw", 1 ),
    warp_image_sub_( nh_, "/camera/depth/image_rect_raw", 1 ),
#endif
    sync( MySyncPolicy( 10 ), orig_image_sub_, warp_image_sub_ )
  {
    sync.registerCallback( boost::bind( &MyClass::callback, this, _1, _2 ) );
    // Setup ROS service
    service_capture = nh_.advertiseService("realsense_camera", &MyClass::srv_capture, this);
  }

  void callback(
    const sensor_msgs::ImageConstPtr& color_image,
    const sensor_msgs::ImageConstPtr& depth_image
  ){
    // your code here
    //std::cout << "Now I am receiving images!! "<< std::endl;
    cv_bridge::CvImagePtr cv_ptr1;
    cv_bridge::CvImagePtr cv_ptr2;
    //float * depth2color_extrinsics = new float[12];
    try
    {
      cv_ptr1 = cv_bridge::toCvCopy(color_image, sensor_msgs::image_encodings::BGR8);
      cv_ptr2 = cv_bridge::toCvCopy(depth_image, sensor_msgs::image_encodings::TYPE_16UC1);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
    //std::memcpy(color_cam_intrinsics, &color_cam_info->K, sizeof(double)*9);
    //std::memcpy(depth_cam_intrinsics, &depth_cam_info->K, sizeof(double)*9);
    cv::imshow(OPENCV_WINDOW1, cv_ptr1->image);
    cv::imshow(OPENCV_WINDOW2, cv_ptr2->image);
    // std::cout << "fx= " <<color_cam_intrinsics[0]<<" fy="<<color_cam_info->K[4]
    //           <<" cx="<<color_cam_info->K[2]<<" cy="<<color_cam_info->K[5]<<std::endl;

    cloud_buffer_loaded = true;
    cv::waitKey(3);
  }

  bool srv_capture(data_capture::ImageSave::Request &req,
                   data_capture::ImageSave::Response &res)
  {
    if(cloud_buffer_loaded)
    {
      cv::imwrite(req.image_path, rgb_img);
      std::cout<<"Now I am answering the client's call and save image"<<std::endl;
      res.success=1;
      //ROS_INFO("request: path=%s", req.image_path);
      std::string str("Saving images to : ");
      res.message = str.append(req.image_path);
    }
    return true;
  }


private:
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  cv::Mat rgb_img;
  cv::Mat depth_img;
  double * color_cam_intrinsics = new double[9];
  double * depth_cam_intrinsics = new double[9];

  bool cloud_buffer_loaded = false;

#if USE_IMAGE_TRANSPORT_SUBSCRIBER_FILTER
  typedef image_transport::SubscriberFilter ImageSubscriber;
#else
  typedef message_filters::Subscriber< sensor_msgs::Image > ImageSubscriber;
#endif

  ImageSubscriber orig_image_sub_;
  ImageSubscriber warp_image_sub_;

  // Setup ROS Service
  ros::ServiceServer service_capture;

  typedef message_filters::sync_policies::ApproximateTime<
    sensor_msgs::Image, sensor_msgs::Image
  > MySyncPolicy;

  message_filters::Synchronizer< MySyncPolicy > sync;
};

int main(int argc, char** argv) {
  ros::init( argc, argv, "my_node" );
  MyClass mc;

  while( ros::ok() ){
    ros::spin();
  }

  return EXIT_SUCCESS;
}
