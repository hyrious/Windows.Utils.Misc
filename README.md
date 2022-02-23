# Windows Utils Misc

Some simple utilities for my daily use.

## Details

```
.
│
├─admin
│      clear_EPP.cmd            remove Windows Defender's context menu
│      remove_nv_igfx.cmd       remove Display Drivers' context menu
│      WUClean.cmd              free the space of disk C:
│      clear_BaiduPan.cmd       remove baidupan's context menu
│      clear_Thunder.cmd        remove xunlei laji
│
├─noadmin
│      apply_color.reg          set DWM title bar color
│      clean_qq.cmd             clean qq laji (mostly images)
│      clear_BaiduPan.reg       remove baidupan's context menu
│      clear_Thunder.reg        remove thunder pan's context menu
|      clear_Win...Terminal.reg remove Windows Terminal's context menu
│      clear_nav.reg            remove special folders in explorer
│      clear_VIM.reg            remove gVIM's context menu
│      clear_VS2017_2019.reg    remove VS2017/2019's context menu
│      clear_WYDrive.reg        remove tencent weiyun's context menu
│      open_with_subl.reg       add "Open with Sublime Text" context menu
│      reset_screenshot.reg     reset screenshot count number to 0
│      dont_install_ads.reg     run it just after a clean install
│
├─misc
│      remove_dir.cmd           del /s/f/q && rd /s/q
│
├─src
│      do_nothing.cs            main(){}
│      sleep_infty.cs           Sleep(-1)
│      loop.cs                  loop { touch "loop.txt" } // to wake my hdd
│
└─deprecated
       no_sleep.c               prevent os sleep, not working now
       clear_EPP.reg            use admin/clear_EPP.cmd instead
       clear_igfx.reg           use admin/remove_nv_igfx.cmd instead
       disable_homegroup.cmd    newer win10 doesn't need it
```

## You may also like

https://github.com/taroxd/Windows-Utils

## License

MIT.
