@echo off
setlocal
if "%~1" == "" goto :EOF
del /f/s/q %1 >nul
rd /s/q %1