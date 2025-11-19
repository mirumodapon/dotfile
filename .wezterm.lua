local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("ComicShannsMono Nerd Font")
config.font_size = 12

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.85
config.color_scheme = 'Catppuccin Mocha'
config.native_macos_fullscreen_mode = false

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
  },
  {
    key = 'f',
    mods = 'META',
    action = wezterm.action.ToggleFullScreen,
  },
  {
    key = 't',
    mods = 'META',
    action = wezterm.action.ToggleAlwaysOnTop,
  },
  {
    key = '"',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal,
  },
  {
    key = "'",
    mods = 'CMD',
    action = wezterm.action.SplitVertical,
  }
}

return config
