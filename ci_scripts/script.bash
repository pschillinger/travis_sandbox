#!/usr/bin/env bash
set -e

source ~/catkin_ws/devel/setup.bash

# build packages
cd ~/catkin_ws
catkin build
source ~/catkin_ws/devel/setup.bash

# TEST create repo
cd ~/catkin_ws/src
rosrun flexbe_widget create_repo test

# TEST run ros tests
cd ~/catkin_ws
catkin build
catkin run_tests && catkin_test_results

# TEST run flexbe_app devel tests
# xvfb-run roslaunch ~/flexbe_ci/launch/test_flexbe_devel.launch

# install packages
cd ~/catkin_ws
catkin clean --yes
catkin config --install
catkin build
source ~/catkin_ws/install/setup.bash

# TEST run flexbe_app install tests
# xvfb-run roslaunch ~/flexbe_ci/launch/flexbe_install.launch
