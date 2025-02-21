local settings = require("settings")
local colors = require("colors")
local icons = require("icons")  -- Ensure this includes icons.clock or use another symbol

-- Padding before the bracket
sbar.add("item", { position = "right", width = settings.group_paddings })

local cal = sbar.add("item", "calendar", {
  label = {
    color = colors.softorange,
    align = "right",
    font = { family = settings.font.numbers },
    padding_right = 8,  -- spacing on the right side
    -- width = 60,      -- optionally fix the width, if desired
  },
  position = "right",
  update_freq = 30,
  padding_left = 1,
  padding_right = 1,
  background = {
    color = colors.with_alpha(colors.darkblue, 0.6),
    border_color = colors.bg2,
    border_width = 1,
    height = 17,
    corner_radius = 9,
  },
  click_script = "open -a 'Calendar'",
})

-- Padding after the bracket
sbar.add("item", { position = "right", width = settings.group_paddings })

-- Update subscription with extra spacing between date and time
cal:subscribe({ "forced", "routine", "system_woke" }, function(env)
  local date_str = os.date("%a. %d %b.")
  local time_str = os.date("%H:%M:%S")

  -- Increase or decrease the spaces to match your preference
  cal:set({ label = date_str .. " " .. time_str })
end)
