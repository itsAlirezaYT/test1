@echo off
setlocal
set "TARGET=C:\ProgramData\MyApp"
set "EXENAME=system38.exe"

del /F /Q "%TARGET%\%EXENAME%"
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MyApp" /f
schtasks /delete /tn "MyAppStartup" /f
rmdir /S /Q "%TARGET%"
