local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
  height = 25,
  color = colors.with_alpha(colors.bar.bg, 0.0),
  padding_right = 2,
  padding_left = 2,
})