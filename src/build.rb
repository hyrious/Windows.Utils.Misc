# also -> https://github.com/piotrmurach/tty

module EasyTTY
  COLORS = {
    clear:      0,
    reset:      0,
    bold:       1,
    dark:       2,
    dim:        2,
    italic:     3,
    underline:  4,
    underscore: 4,
    inverse:    7,
    hidden:     8,
    strikethrough: 9,

    black:   30,
    red:     31,
    green:   32,
    yellow:  33,
    blue:    34,
    magenta: 35,
    cyan:    36,
    white:   37,

    on_black:   40,
    on_red:     41,
    on_green:   42,
    on_yellow:  43,
    on_blue:    44,
    on_magenta: 45,
    on_cyan:    46,
    on_white:   47,

    bright_black:   90,
    bright_red:     91,
    bright_green:   92,
    bright_yellow:  93,
    bright_blue:    94,
    bright_magenta: 95,
    bright_cyan:    96,
    bright_white:   97,

    on_bright_black:   100,
    on_bright_red:     101,
    on_bright_green:   102,
    on_bright_yellow:  103,
    on_bright_blue:    104,
    on_bright_magenta: 105,
    on_bright_cyan:    106,
    on_bright_white:   107
  }.freeze
  RULES = {
    # /C[n]   Color   (/C   Reset)
    %r{/[Cc]\[(\d+)\]}  => "\e[\\1m",
    %r{/[Cc]}           => "\e[m",
    # /^[n]   Up
    %r{/\^\[(\d+)\]} => "\e[\\1A",
    # /_[n]   Down
    %r{/\_\[(\d+)\]} => "\e[\\1B",
    # />[n]   Right
    %r{/\>\[(\d+)\]} => "\e[\\1C",
    # /<[n]   Left
    %r{/\<\[(\d+)\]} => "\e[\\1D",
    # /\[n]   Next Line (at the beginning)
    %r{/\\\[(\d+)\]} => "\e[\\1E",
    # //[n]   Previous Line (at the beginning)
    %r{\/\/\[(\d+)\]} => "\e[\\1F",
    # /-[n]   Absolute Horizontal Position
    %r{/\-\[(\d+)\]} => "\e[\\1G",
    # /|[n]   Absolute Vertical Position
    %r{/\|\[(\d+)\]} => "\e[\\1d",
    # /+[y,x] Absolute Position
    %r{/\+\[(\d+)[,;]\s*(\d+)\]} => "\e[\\1;\\2H",
    #                       same as "\e[\\1;\\2f"
    # /s      Save Position
    %r{/[Ss]} => "\e[s",
    # /l      Load Position
    %r{/[Ll]} => "\e[u",
    # /b      blinking (as default)
    %r{/b} => "\e[?12h",
    # /B      no blinking
    %r{/B} => "\e[?12l",
    # /H      show (as default)
    %r{/H} => "\e[?25h",
    # /h      hide
    %r{/h} => "\e[?25l",
    # /{[n]   Scroll Up
    %r{/\{\[(\d+)\]} => "\e[\\1S",
    # /}[n]   Scroll Down
    %r{/\}\[(\d+)\]} => "\e[\\1T"
  }.freeze
  def self.escape str
    RULES.each { |m, v| str.gsub! m, v }
    str
  end
  def self.exec str
    puts escape "/C/C[1]#{str}/C"
    system str
  end
end

module WindowsUtilsMisc
  CSC = `dir /s/b %windir%\\Microsoft.NET\\csc.exe`.strip.lines.last.freeze
  exit 1 if CSC.nil?
  def self.csc file
    CSC + ' /nologo ' + file
  end
end

ARGV.each do |e|
  case File.extname(e)
  when '.cs'
    EasyTTY.exec WindowsUtilsMisc.csc e
  end
end
