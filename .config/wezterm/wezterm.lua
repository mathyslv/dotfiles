-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font 'Fira Code'
config.font_size = 16
config.harfbuzz_features = { 'zero', 'cv02', 'ss05', 'ss03', 'cv29', 'ss02' }
config.color_scheme = 'catppuccin-mocha'

-- config.window_background_image = '/home/spiritum/Downloads/5935926_3092704.jpeg'
-- config.window_background_image_hsb = {
--   -- Darken the background image by reducing it to 1/3rd
--   brightness = 0.01,

--   -- You can adjust the hue by scaling its value.
--   -- a multiplier of 1.0 leaves the value unchanged.
--   hue = 1.0,

--   -- You can adjust the saturation also.
--   saturation = 1.0,
-- }

-- timeout_milliseconds defaults to 1000 and can be omitted
-- config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  -- {
  --   key = '|',
  --   mods = 'LEADER|SHIFT',
  --   action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  -- },
  -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
  -- {
  --   key = 'a',
  --   mods = 'LEADER|CTRL',
  --   action = wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
  -- },
  {
    key = 'c',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CopyTo 'Clipboard'
  },
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.PasteFrom 'Clipboard'
  }
}

config.hide_tab_bar_if_only_one_tab = true

-- wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
--   local pane_title = tab.active_pane.title
--   local user_title = tab.active_pane.user_vars.panetitle
-- 
--   if user_title ~= nil and #user_title > 0 then
--     pane_title = user_title
--   end
-- 
--   return {
--     {Text=" " .. pane_title .. " "},
--   }
-- end)

-- and finally, return the configuration to wezterm
return config
