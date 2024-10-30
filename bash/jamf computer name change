#!/bin/bash

export LC_CTYPE="UTF-8"
CurrentName=$(scutil --get ComputerName
)
#UserName=$(echo -e $CurrentName | cut -d '의' -f1)
UserName=$(echo "$CurrentName" | sed -E 's/(의|'\''s).*//')
if [ -n "$UserName" ]; then
    echo "컴퓨터 이름을 $UserName 으로 변경합니다."
    scutil --set ComputerName "$UserName"
    scutil --set LocalHostName "$UserName"
    scutil --set HostName "$UserName"
else
    echo "사용자 이름을 추출하지 못했습니다."
fi