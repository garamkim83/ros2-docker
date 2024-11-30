#!/bin/bash
set -e

# ROS2 환경 설정
source /opt/ros/humble/setup.bash

# 워크스페이스 환경 설정
if [ -f "/ros2_ws/install/setup.bash" ]; then
    source /ros2_ws/install/setup.bash
fi

# bash로 실행
exec "$@"
