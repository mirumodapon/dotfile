local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("ComicShannsMono Nerd Font")
config.font_size = 12

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.85
config.color_scheme = 'Catppuccin Mocha'


config.keys = {
  {
    key = '=',
    mods = 'CTRL',
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = '-',
    mods = 'CTRL',
    action = wezterm.action.DisableDefaultAssignment,
  }
}


return config
