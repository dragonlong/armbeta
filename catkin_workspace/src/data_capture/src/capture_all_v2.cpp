#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <image_transport/subscriber_filter.h>
#include <cv_bridge/cv_bridge.h>
#include <std_srvs/Empty.h>
#include <std_srvs/Trigger.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/exact_time.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <data_capture/ImageSave.h>
#include "data_capture/Num.h"
//>>>>>>>>>>>>>>>>>>Copyright (c) 2018 Robotmeta>>>>>>>>>>>>>>>>>>>>//
// Author: Xiaolong Li, lxiaol9@vt.edu, Aug 1st, 2018
//
// A ROS package for synchronized rgb-d image plus camera info subscriber
// and saving with realsense SR300
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
// template<typename T1, typename T>
// void SetArrayFromScalars(T1& a, T x0,T x1,T x2,T x3,T x4,T x5,T x6,T x7,T x8)
// {a[0] = x0; a[1] = x1;  a[2] = x2;  a[3] = x3;  a[4] = x4;  a[5] = x5;
//  a[6] = x6; a[7] = x7;  a[8] = x8; }
// template<typename T1, typename T>
// void SetArrayFromScalars(T1& a, T x0,T x1,T x2,T x3,T x4,T x5,T x6,T x7,T x8,T x9,T x10,T x11)
// {a[0] = x0; a[1] = x1;  a[2] = x2;  a[3] = x3;  a[4] = x4;   a[5] = x5;
//  a[6] = x6; a[7] = x7;  a[8] = x8;  a[9] = x9;  a[10] = x10; a[11] = x11;}

static const std::string OPENCV_WINDOW1 = "RGB Image Window";
static const std::string OPENCV_WINDOW2 = "Depth Image Window";
bool print_debug;
int frames_passed = 0;
cv::Mat image_rgb;
cv::Mat image_depth;

using namespace sensor_msgs;
using namespace message_filters;

//void imageCallback(const sensor_msgs::ImageConstPtr& msg)
void callback(const ImageConstPtr& color_image,
              const ImageConstPtr& depth_image,
              const CameraInfoConstPtr& color_cam_info,
              const CameraInfoConstPtr& depth_cam_info)
{
  std::cout << "Now I am receiving images!! "<< std::endl;
  cv_bridge::CvImagePtr cv_ptr1;
  cv_bridge::CvImagePtr cv_ptr2;
  double * color_cam_intrinsics = new double[9];
  double * depth_cam_intrinsics = new double[9];
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
  std::memcpy(color_cam_intrinsics, &color_cam_info->K, sizeof(double)*9);
  std::memcpy(depth_cam_intrinsics, &depth_cam_info->K, sizeof(double)*9);
  cv::imshow(OPENCV_WINDOW1, cv_ptr1->image);
  cv::imshow(OPENCV_WINDOW2, cv_ptr2->image);
  std::cout << "fx= " <<color_cam_intrinsics[0]<<" fy="<<color_cam_info->K[4]
            <<" cx="<<color_cam_info->K[2]<<" cy="<<color_cam_info->K[5]<<std::endl;
  cv::waitKey(3);

}
bool save_imgs(data_capture::ImageSave::Request &req, data_capture::ImageSave::Response &res)
{
  // save the transformed image to a file
  cv::imwrite( req.image_path, image_rgb);
  std::cout<<"Now I am answering the client's call"<<std::endl;
  res.success=1;
  //ROS_INFO("request: path=%s", req.image_path);
  std::string str("Saving images to : ");
  res.message = str.append(req.image_path);
  //ROS_INFO("%s", str);
  return true;
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "vision_node");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  //ros::Subscriber sub = n.subscribe("/camera/color/image_raw", 1, imageCallback);
  std::cout<<"Now it is subscribing to the topics"<<std::endl;
  image_transport::SubscriberFilter image_color_sub;
  image_color_sub.subscribe(it, "/camera/color/image_raw", 1);
  image_transport::SubscriberFilter image_depth_sub;
  image_depth_sub.subscribe(it, "/camera/depth/image_rect_raw", 1);
  //message_filters::Subscriber<Image> image_color_sub(nh, "/camera/color/image_raw", 1);
  message_filters::Subscriber<CameraInfo> info_color_sub(nh, "/camera/color/camera_info", 1);
  //message_filters::Subscriber<Image> image_depth_sub(nh, "/camera/depth/image_rect_raw", 1);
  message_filters::Subscriber<CameraInfo> info_depth_sub(nh, "/camera/depth/camera_info", 1);
  // TimeSynchronizer<Image, CameraInfo, Image, CameraInfo> sync(
  //   image_color_sub,
  //   info_color_sub,
  //   image_depth_sub,
  //   info_depth_sub, 10
  // );
  // sync.registerCallback(boost::bind(&Callback, _1, _2, _3, _4));
  // typedef sync_policies::ApproximateTime<Image, CameraInfo, Image, CameraInfo> MySyncPolicy;
  // Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), image_color_sub, info_color_sub, image_depth_sub, info_depth_sub);
  // sync.registerCallback(boost::bind(&callback, _1, _2, _3, _4));
  typedef sync_policies::ApproximateTime<Image, Image, CameraInfo, CameraInfo> MySyncPolicy;
  message_filters::Synchronizer<MySyncPolicy> sync(MySyncPolicy(10),image_color_sub, image_depth_sub, info_color_sub, info_depth_sub);
  sync.registerCallback(boost::bind(&callback, _1, _2, _3, _4));
  nh.param<bool>("print_debug", print_debug, false);
  //ros::ServiceClient client = n.serviceClient<std_srvs::Empty>("/image_saver/save");
  // initialize message object
  //std_srvs::Empty srv;
  ros::ServiceServer service = nh.advertiseService("vision_saver", save_imgs);
  //ROS_INFO("Ready to save images");

  //ros::spin();
  ros::Rate loop_rate(5);
  while (ros::ok()) {
        ros::spinOnce();
        std::cout << "Now it is running!! "<< std::endl;
        // put what you want here
        if (frames_passed>10)
        {
          frames_passed=0;
          std::cout << "10 images passed! "<< std::endl;
        }
        loop_rate.sleep();
  }
  return 0;

}

// Reference: topics from realsense camera
// /camera/color/camera_info
// /camera/color/image_raw
// /camera/depth/camera_info
// /camera/depth/image_rect_raw
// /camera/extrinsics/depth_to_color
// /camera/extrinsics/depth_to_infra1
// /camera/infra1/camera_info
// /camera/infra1/image_rect_raw
