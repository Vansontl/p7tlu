@echo off
setlocal
cd /d "%~dp0"
echo [INFO] Dang dung Workforce WebApp...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\stop-workforce.ps1"
endlocal
