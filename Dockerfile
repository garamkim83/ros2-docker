# ROS2 Humble 기반 이미지
FROM osrf/ros:humble-desktop

# 기본 패키지 업데이트 및 추가 소프트웨어 설치
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    ros-humble-demo-nodes-cpp \
    ros-humble-demo-nodes-py \
    terminator \
    gedit \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정
WORKDIR /ros2_ws

# ROS2 워크스페이스 초기화
RUN mkdir -p src

# Entrypoint 설정
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# 기본 실행 명령
CMD ["bash"]
