@echo off
setlocal
call ruby "%~dp0\build.rb" %*
goto ED_%ErrorLevel%

:ED_0 no error
echo Done.
goto :EOF

:ED_1 no csc
echo not found .Net Framework (csc.exe)
echo maybe you could compile it yourself:
echo   csc /nologo ^<file.cs^>
goto :EOF
