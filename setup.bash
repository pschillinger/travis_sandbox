#!/usr/bin/env bash

export ROS_PARALLEL_JOBS='-j8'
export ROSINSTALL_FILE='~/flexbe_ci/workspace.rosinstall'

chmod -R +x ~/flexbe_ci/ci_scripts
