#!/usr/bin/env bash
set -e

# setup workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin init
catkin build
source ~/catkin_ws/devel/setup.bash
