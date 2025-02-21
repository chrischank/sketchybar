return {
  black = 0xff181819,
  white = 0xffe2e2e3,
  red = 0xfffc5d7c,
  green = 0xff9ed072,
  blue = 0xff76cce0,
  yellow = 0xffe7c664,
  orange = 0xfff39660,
  magenta = 0xffb39df3,
  grey = 0xff7f8490,
  transparent = 0x00000000,
  darkblue = 0xff08131a,
  softorange = 0xffdeb88d,
  selection = 0xfffba02f,
  lightblue = 0xffe9fffc,
  lightblue2 = 0xffc2f3fd,

  bar = {
    bg = 0xff08131a,
    border = 0xffdeb88d,
  },
  popup = {
    bg = 0xff08131a,
    border = 0xffdeb88d
  },
  bg1 = 0xff363944,
  bg2 = 0xff414550,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
