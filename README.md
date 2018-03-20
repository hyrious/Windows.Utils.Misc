# Windows Utils Misc

Some simple utilities for my daily use.

    *disable_homegroup.cmd  disable HomeGroup service
    *remove_nv_igfx.cmd     remove display drivers' context menu entries
    *WUClean.cmd            remove Windows Update Temp
    clean_qq.cmd            remove QQ laji (mostly cached images)
    apply_color.reg         apply accent color and inactive color
    clear_BaiduPan.reg      remove the context menu of BaiduPan
    clear_EPP.reg           remove the context menu of EPP (Windows Defender)
    clear_igfx.reg          remove the context menu of igfx (intel display driver)
    clear_nav.reg           remove useless entries at explorer's left
    clear_VS2017.reg        remove the context menu of VS 2017
    clear_WYDrive.reg       remove the explorer entry of Tencent WeiYun
    open_with_subl.reg      add context menu entry for Sublime Text 3 with icon
    reset_screenshot.reg    reset screenshot(Win + PrtScr)'s number to 0
    do_nothing.cs           main(){}
    sleep_infty.cs          Sleep(​INFINITE​)
    remove_dir.cmd          https://stackoverflow.com/a/6208144
    no_sleep.c              please don't sleep
    
    *: need administrator privilege

Note: Although `clear_EPP.reg` works immediately, the context menu entry of which
shows again after rebooting :/

## Other things

### How to use these .cs files

You can use Visual Studio or simply csc.exe to compile them.

If OS Windows 10, you can try the ruby code below:

```ruby
exit ARGV.each do |file|
  CSC = `dir /s/b %windir%\\Microsoft.NET\\csc.exe`.strip.lines.last.freeze
  exit 1 if CSC.nil?
  puts "\e[1m\e[32mCompiling #{file}\e[0m"
  if system "#{CSC} /nologo #{file}"
    puts "\e[A\e[32mCompiling #{file} \e[0m[\e[1m\e[32m OK \e[0m]"
  else
    puts "\e[A\e[1mCompiling #{file} \e[0m[\e[1m\e[31m Failed \e[0m]"
  end
end.size
```

### Import all `*.reg` files

1. `copy *.reg all.reg`
2. double click `all.reg`.

### Restore explorer's left

Well, it will come back the next Windows Update (monthly).

## You may also like

https://github.com/taroxd/Windows-Utils-Misc

## License

MIT.
