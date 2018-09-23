#!/usr/bin/env bash
set -e

# clone required packages
cd ~/catkin_ws/src
wstool init
for rosinstall in ~/flexbe_ci/rosinstall/*.rosinstall; do
    if [ "$(basename $rosinstall .rosinstall)" == "$BASE_REPO" ]; then
        wstool merge $rosinstall
    else
        ln -s $BASE_PATH ~/$BASE_REPO
    fi
done
wstool up
cd ~/catkin_ws
rosdep install -y --from-paths src --ignore-src
