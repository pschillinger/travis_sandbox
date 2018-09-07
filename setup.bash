#!/usr/bin/env bash

export ROS_PARALLEL_JOBS='-j8'
export ROSINSTALL_FILE='~/flexbe_ci/workspace.rosinstall'

alias flexbe_ci_before_install='. ~/flexbe_ci/ci_scripts/before_install.bash'
alias flexbe_ci_install='. ~/flexbe_ci/ci_scripts/install.bash'
alias flexbe_ci_before_script='. ~/flexbe_ci/ci_scripts/before_script.bash'
alias flexbe_ci_script='. ~/flexbe_ci/ci_scripts/script.bash'
