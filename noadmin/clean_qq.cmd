@echo off
setlocal
del /s/q/f %appdata%\Tencent
set qq=%1
if "%qq%" == "" (
  set /p qq=Where is your QQ Number? 
)
if "%qq%" neq "" (
  del /s/q/f "%userprofile%\Documents\Tencent Files\%qq%\Image"
)
