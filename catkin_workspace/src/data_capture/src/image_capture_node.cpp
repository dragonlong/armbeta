#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <std_srvs/Empty.h>
#include <std_srvs/Trigger.h>
#include <data_capture/ImageSave.h>
#include <data_capture/Num.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

template<typename T1, typename T>
void SetArrayFromScalars(T1& a, T x0,T x1,T x2,T x3,T x4,T x5,T x6,T x7,T x8)
{a[0] = x0; a[1] = x1;  a[2] = x2;  a[3] = x3;  a[4] = x4;  a[5] = x5;
 a[6] = x6; a[7] = x7;  a[8] = x8; }
template<typename T1, typename T>
void SetArrayFromScalars(T1& a, T x0,T x1,T x2,T x3,T x4,T x5,T x6,T x7,T x8,T x9,T x10,T x11)
{a[0] = x0; a[1] = x1;  a[2] = x2;  a[3] = x3;  a[4] = x4;   a[5] = x5;
 a[6] = x6; a[7] = x7;  a[8] = x8;  a[9] = x9;  a[10] = x10; a[11] = x11;}

static const std::string OPENCV_WINDOW = "Image Window";
bool print_debug;
int frames_passed = 0;
cv::Mat image_rgb;

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  cv_bridge::CvImagePtr cv_ptr;
  try
  {
    cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);

  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("cv_bridge exception: %s", e.what());
    return;
  }
  cv::imshow(OPENCV_WINDOW, cv_ptr->image);
  image_rgb = cv_ptr->image;
  if(print_debug)
  {
    std::cout << "Image successfullly captured! "<< std::endl;
  }
  frames_passed++;
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
  ros::init(argc, argv, "image_capture_node");
  ros::NodeHandle n("~");
  ros::Subscriber sub = n.subscribe("/camera/color/image_raw", 10, imageCallback);
  n.param<bool>("print_debug", print_debug, false);
  //ros::ServiceClient client = n.serviceClient<std_srvs::Empty>("/image_saver/save");
  // initialize message object
  //std_srvs::Empty srv;
  ros::ServiceServer service = n.advertiseService("image_saver", save_imgs);
  //ROS_INFO("Ready to save images");
  ros::Rate loop_rate(20);
  while (ros::ok()) {
        ros::spinOnce();
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
