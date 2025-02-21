local colors = require("colors")
local settings = require("settings")

-- Create the 'front_app' item in the center with consistent background
local front_app = sbar.add("item", "front_app", {
  display = "active",
  position = "center",
  icon = { drawing = false },
  label = {
    font = {
      style = settings.font.style_map["Black"],
      size = 10.0,
    },
    padding_left = 8,
    padding_right = 8,
  },
  updates = true,
  background = {
    color = colors.with_alpha(colors.darkblue, 0.6),       -- matches other item backgrounds
    corner_radius = 9,        -- consistent corner radius
    border_color = colors.selection,
    border_width = 1,
    height = 17               -- consistent height
  },
})

front_app:subscribe("front_app_switched", function(env)
  front_app:set({
    label = { string = env.INFO }
  })
end)

front_app:subscribe("mouse.clicked", function(env)
  sbar.trigger("swap_menus_and_spaces")
end)
