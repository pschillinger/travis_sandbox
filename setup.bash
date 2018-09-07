#!/usr/bin/env bash

export ROS_PARALLEL_JOBS='-j8'
export ROS_DISTRO=${1:-indigo}

chmod -R +x ~/flexbe_ci/ci_scripts
