execute_process(COMMAND "/home/dragonx/catkin_workspace/build/mask_rcnn_ros-kinetic-devel/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dragonx/catkin_workspace/build/mask_rcnn_ros-kinetic-devel/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
