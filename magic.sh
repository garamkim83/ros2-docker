#!/bin/bash

# made by ram

# 사용법
# 1. 권한 부여
# chmod +x magic.sh
# 2. 실행
# ./magic.sh

# GUI 권한 부여
xhost +local:root

# 도커 컴포즈 실행
docker compose up -d

# 도커 컴포즈 실행 확인
docker compose ps -a

# 도커 컴포즈 로그 확인
docker compose logs -f