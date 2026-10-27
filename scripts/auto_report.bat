
@echo off
set "LOG=%~dp0..\data\log-he-thong.log"
set "REPORT=%~dp0..\backup\bao-cao-su-co.txt"

if not exist "%LOG%" (
    echo ERROR: Khong tim thay file log.
    exit /b 1
)

if not exist "%~dp0..\backup" mkdir "%~dp0..\backup"

echo ======================================== >> "%REPORT%"
echo GREENTECH SYSTEM - ERROR REPORT >> "%REPORT%"
echo Thoi gian: %date% %time% >> "%REPORT%"
echo ======================================== >> "%REPORT%"

type "%LOG%" | findstr /I /C:"CRITICAL" /C:"ERROR" /C:"TIMEOUT" >> "%REPORT%"

echo Da hoan tat loc log.
echo Bao cao: %REPORT%
