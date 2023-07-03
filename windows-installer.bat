@echo off

set SOURCE=CNPS
set DESTINATION=C:\Program Files\Adobe\CEP\extensions
set USERNAME=%USERNAME%

echo SOURCE : %SOURCE%
echo DESTINATION : %DESTINATION%
echo 폴더를 복사했습니다.

:: 플러그인 복사
if exist "%SOURCE%" (
    xcopy /E /I /Y "%SOURCE%" "%DESTINATION%"
    echo 폴더를 복사했습니다.
) else (
    echo 오류: %SOURCE% 폴더를 찾을 수 없습니다.
)

:: Adobe CSXS 환경설정 변경
reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.11" /v PlayerDebugMode /t REG_SZ /d "1" /f
echo Adobe CSXS 환경설정이 추가되었습니다.
