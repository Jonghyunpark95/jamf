#!/bin/bash

# MAC 주소 가져오기
mac_address=$(ifconfig en0 | awk '/ether/ {print $2}')

# IP 주소 가져오기
ip_address=$(ifconfig en0 | awk '/inet / {print $2}')

# 호스트 이름 가져오기
hostname=$(hostname)

# 시리얼 번호 가져오기
serial_number=$(system_profiler SPHardwareDataType | awk '/Serial Number (system)/ {print $4}')

# 메시지 내용 생성
message="MAC 주소: $mac_address\nIP 주소: $ip_address\n호스트 이름: $hostname\n시리얼 번호: $serial_number"

# 메시지 창에 정보 표시
osascript -e "display dialog \"$message\" with title \"맥북 정보\""