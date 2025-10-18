@echo off
setlocal
set "TARGET=%LOCALAPPDATA%\MyApp"
set "EXENAME=system38.exe"

del /F /Q "%TARGET%\%EXENAME%" >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MyApp" /f >nul 2>&1
rmdir /S /Q "%TARGET%" >nul 2>&1
