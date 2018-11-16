# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mask_rcnn_ros: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imask_rcnn_ros:/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mask_rcnn_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" NAME_WE)
add_custom_target(_mask_rcnn_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mask_rcnn_ros" "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest:sensor_msgs/Image"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mask_rcnn_ros
  "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_rcnn_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(mask_rcnn_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_rcnn_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mask_rcnn_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mask_rcnn_ros_generate_messages mask_rcnn_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" NAME_WE)
add_dependencies(mask_rcnn_ros_generate_messages_cpp _mask_rcnn_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_rcnn_ros_gencpp)
add_dependencies(mask_rcnn_ros_gencpp mask_rcnn_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_rcnn_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mask_rcnn_ros
  "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_rcnn_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(mask_rcnn_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_rcnn_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mask_rcnn_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mask_rcnn_ros_generate_messages mask_rcnn_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" NAME_WE)
add_dependencies(mask_rcnn_ros_generate_messages_eus _mask_rcnn_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_rcnn_ros_geneus)
add_dependencies(mask_rcnn_ros_geneus mask_rcnn_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_rcnn_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mask_rcnn_ros
  "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_rcnn_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(mask_rcnn_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_rcnn_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mask_rcnn_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mask_rcnn_ros_generate_messages mask_rcnn_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" NAME_WE)
add_dependencies(mask_rcnn_ros_generate_messages_lisp _mask_rcnn_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_rcnn_ros_genlisp)
add_dependencies(mask_rcnn_ros_genlisp mask_rcnn_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_rcnn_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mask_rcnn_ros
  "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_rcnn_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mask_rcnn_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_rcnn_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mask_rcnn_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mask_rcnn_ros_generate_messages mask_rcnn_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" NAME_WE)
add_dependencies(mask_rcnn_ros_generate_messages_nodejs _mask_rcnn_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_rcnn_ros_gennodejs)
add_dependencies(mask_rcnn_ros_gennodejs mask_rcnn_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_rcnn_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mask_rcnn_ros
  "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros
)

### Generating Services

### Generating Module File
_generate_module_py(mask_rcnn_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mask_rcnn_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mask_rcnn_ros_generate_messages mask_rcnn_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dragonx/catkin_workspace/src/mask_rcnn_ros/msg/Result.msg" NAME_WE)
add_dependencies(mask_rcnn_ros_generate_messages_py _mask_rcnn_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mask_rcnn_ros_genpy)
add_dependencies(mask_rcnn_ros_genpy mask_rcnn_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mask_rcnn_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_rcnn_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mask_rcnn_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mask_rcnn_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mask_rcnn_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_rcnn_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mask_rcnn_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mask_rcnn_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mask_rcnn_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_rcnn_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mask_rcnn_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mask_rcnn_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mask_rcnn_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_rcnn_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mask_rcnn_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mask_rcnn_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mask_rcnn_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros)
  install(CODE "execute_process(COMMAND \"/home/dragonx/anaconda3/envs/tensorflow/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mask_rcnn_ros/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mask_rcnn_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mask_rcnn_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
