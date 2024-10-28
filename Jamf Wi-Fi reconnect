#!/bin/bash

# 현재 Wi-Fi 네트워크 연결 해제
networksetup -setairportpower en0 off

# 잠시 대기
sleep 5

# Wi-Fi 네트워크 다시 연결
networksetup -setairportpower en0 on

# 결과 출력
echo "Wi-Fi 연결을 재설정했습니다."
exit 0