# Windows Utils Misc

Some simple utilities for my daily use.

    *disable_homegroup.cmd  disable HomeGroup service
    apply_color.reg         apply accent color and inactive color
    clear_BaiduPan.reg      remove the context menu of BaiduPan
    clear_EPP.reg           remove the context menu of EPP (Windows Defender)
    clear_igfx.reg          remove the context menu of igfx (intel display driver)
    clear_nav.reg           remove useless entries at explorer's left
    clear_VS2017.reg        remove the context menu of VS 2017
    clear_WYDrive.reg       remove the explorer enrty of Tencent WeiYun
    open_with_subl.reg      add context menu entry for Sublime Text 3 with icon
    reset_screenshot.reg    reset screenshot(Win + PrtScr)'s number to 0
    do_nothing.exe          main(){}
    sleep_infty.exe         Sleep(​INFINITE​)
    
    *: need administrator privilege

Note: Although `clear_EPP.reg` works immediately, the context menu entry of which
shows again after rebooting :/

## Other things

### Import all `*.reg` files

1. `copy *.reg all.reg`
2. double click `all.reg`.

### Restore explorer's left

Well, it will come back the next Windows Update (monthly).

## You may also like

https://github.com/taroxd/Windows-Utils-Misc

## License

MIT.