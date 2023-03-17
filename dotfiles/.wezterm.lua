local wezterm = require 'wezterm'
return {
  unix_domains                 = {
    {
      name = 'wsl',
    },
  },
  -- This causes `wezterm` to act as though it was started as
  -- `wezterm connect unix` by default, connecting to the unix
  -- domain on startup.
  -- If you prefer to connect manually, leave out this line.
  default_gui_startup_args     = { 'connect', 'wsl' },
  color_scheme                 = "VSCodeDark+ (Gogh)",
  use_fancy_tab_bar            = false,
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom            = true,
  scrollback_lines             = 20000,
  enable_scroll_bar            = false,
  window_background_opacity    = 0.90,
  text_background_opacity      = 0.90,
  window_padding               = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  keys                         = {
    { key = 'm', mods = 'ALT', action = wezterm.action.ShowLauncher },
  },
  font                         = wezterm.font 'FiraCode Nerd Font Mono',
  harfbuzz_features            = { 'calt=0', 'clig=0', 'liga=0' },
}
