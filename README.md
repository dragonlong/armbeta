# armbeta
3D Perception with Robot Arm
# Intro
Project adapted from [apc-vision-toolbox](https://github.com/andyzeng/apc-vision-toolbox) by [Andy Zeng](http://andyzeng.github.io). Compared to the original implementation, the TF version mask-rcnn is integrated as a
ROS node for object detection and segmentation, the original segmentation network is using FCN with marvin(a light-weight and efficient deep learning library);instead of using F200, SR300 is used to aquire rgd-d images, ROS node of synchronizing capture of rgb and depth images is added.
