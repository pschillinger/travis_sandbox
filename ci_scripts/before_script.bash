#!/usr/bin/env bash
set -e

# clone packages
cd ~/catkin_ws/src
wstool init
wstool merge $ROSINSTALL_FILE
wstool up
cd ~/catkin_ws
rosdep install -y --from-paths src --ignore-src
