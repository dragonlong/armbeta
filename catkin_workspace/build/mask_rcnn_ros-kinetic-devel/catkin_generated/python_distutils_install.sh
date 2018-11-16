#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dragonx/catkin_workspace/src/mask_rcnn_ros-kinetic-devel"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dragonx/catkin_workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dragonx/catkin_workspace/install/lib/python3/dist-packages:/home/dragonx/catkin_workspace/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dragonx/catkin_workspace/build" \
    "/home/dragonx/anaconda3/envs/tensorflow/bin/python" \
    "/home/dragonx/catkin_workspace/src/mask_rcnn_ros-kinetic-devel/setup.py" \
    build --build-base "/home/dragonx/catkin_workspace/build/mask_rcnn_ros-kinetic-devel" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dragonx/catkin_workspace/install" --install-scripts="/home/dragonx/catkin_workspace/install/bin"
