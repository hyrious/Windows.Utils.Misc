cleanmgr /D %WinDir%\System32
dism /Online /Cleanup-Image /StartComponentCleanup /ResetBase
>nul del /s/f/q %WinDir%\SoftwareDistribution\Download
