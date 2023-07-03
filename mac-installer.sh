#!/bin/bash

SOURCE="CNPS"
DESTINATION="/Library/Application Support/Adobe/CEP/extensions"
USERNAME="$USER"

echo "SOURCE : " + $SOURCE
echo "DESTINATION : " + $DESTINATION
echo "폴더를 복사했습니다."

# 플러그인 복사
if [ -d "$SOURCE" ]; then
    cp -R "$SOURCE" "$DESTINATION"
    echo "폴더를 복사했습니다."
else
    echo "오류: $SOURCE 폴더를 찾을 수 없습니다."
fi

# Adobe CSXS 환경설정 추가
defaults write /Users/$USERNAME/Library/Preferences/com.adobe.CSXS.11.plist PlayerDebugMode 1
echo "Adobe CSXS 환경설정이 추가되었습니다."