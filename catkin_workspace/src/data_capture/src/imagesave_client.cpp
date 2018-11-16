#include "ros/ros.h"
#include "data_capture/ImageSave.h"
#include "data_capture/Num.h"
#include <termios.h>
#include <cstdlib>

char getch()
{
	fd_set set;
	struct timeval timeout;
	int rv;
	char buff = 0;
	int len = 1;
	int filedesc = 0;
	FD_ZERO(&set);
	FD_SET(filedesc, &set);

	timeout.tv_sec = 0;
	timeout.tv_usec = 1000;

	rv = select(filedesc + 1, &set, NULL, NULL, &timeout);

	struct termios old = {0};
	if (tcgetattr(filedesc, &old) < 0)
    std::cout<<"ICAN 1"<<std::endl;
	old.c_lflag &= ~ICANON;
	old.c_lflag &= ~ECHO;
	old.c_cc[VMIN] = 1;
	old.c_cc[VTIME] = 0;
	if (tcsetattr(filedesc, TCSANOW, &old) < 0)
		std::cout<<"ICAN 2"<<std::endl;

	if(rv == -1)
		std::cout<<"ICAN 3"<<std::endl;
	// else if(rv == 0)
	// 	//ROS_INFO("no_key_pressed");
  //   std::cout<<""<<std::endl;
	else
		read(filedesc, &buff, len);

	old.c_lflag |= ICANON;
	old.c_lflag |= ECHO;
	if (tcsetattr(filedesc, TCSADRAIN, &old) < 0)
		//ROS_ERROR ("tcsetattr ~ICANON");
    std::cout<<"ICAN 4"<<std::endl;
	return (buff);
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "imagesave_client");
  ros::NodeHandle n("~");
  ros::ServiceClient client = n.serviceClient<data_capture::ImageSave>("realsense_camera");
  data_capture::ImageSave srv;
  signed long int cnt=0;
  while(ros::ok())
  {
    int c = 0;
    c=getch();
    ros::spinOnce();
    if(c)
    {
      std::cout<<"Detecting Keyboard Press"<<std::endl;
      srv.request.image_path = "/media/dragonx/data/robot_meta/frame-000001.color.png";
      if(client.call(srv))
      {
        std::cout<<"successfullly saved images to :"<<srv.request.image_path<<std::endl;
      }
      else
      {
        std::cout<<"Something went wrong!!!"<<std::endl;
      }
      cnt++;
    }
  }

  return 1;
}
