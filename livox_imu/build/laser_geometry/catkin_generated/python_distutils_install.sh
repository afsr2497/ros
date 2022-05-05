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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/alexander/ros/livox_imu/src/laser_geometry"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/alexander/ros/livox_imu/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/alexander/ros/livox_imu/install/lib/python3/dist-packages:/home/alexander/ros/livox_imu/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/alexander/ros/livox_imu/build" \
    "/usr/bin/python3" \
    "/home/alexander/ros/livox_imu/src/laser_geometry/setup.py" \
     \
    build --build-base "/home/alexander/ros/livox_imu/build/laser_geometry" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/alexander/ros/livox_imu/install" --install-scripts="/home/alexander/ros/livox_imu/install/bin"
