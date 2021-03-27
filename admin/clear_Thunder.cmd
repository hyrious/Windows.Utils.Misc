set "THUNDER=C:\Program Files (x86)\Thunder Network\Thunder"
sc delete XLNXService
sc delete XLGuard
sc delete XLServicePlatform
sc delete XLWFP
sc delete XMPService
regsvr32 /u /s "%THUNDER%\ThunderVIP\BHO\XunleiBHO643.1.0.154.dll"
regsvr32 /u /s "%THUNDER%\Thunder BHO Platform\np_tdieplat.dll"
regsvr32 /u /s "%THUNDER%\BHO\ShlExt64.dll"
