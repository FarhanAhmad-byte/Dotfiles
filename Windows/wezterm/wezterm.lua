-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Rendering Fix
config.front_end = "OpenGL"

-- Force Powersheel as Default
config.default_prog = {'pwsh.exe'}

-- Color Palette
config.colors = {
    foreground = '#cdd6f4',
    background = '#11111b', -- Deep Dark,
    cursor_bg = '#f5e0dc',
    cursor_border = '#f5e0dc',
    selection_fg = '#11111b',
    selection_bg = '#f5e0dc',
    scrollbar_thumb = '#313244',
    split = '#313244',

    ansi = { '#45475a', '#f38ba8', '#a6e3a1', '#f9e2af',
            '#89b4fa', '#f5c2e7', '#94e2d5', '#bac2de'},

    brights = { '#585b70', '#f38ba8', '#a6e3a1', '#f9e2af',
            '#89b4fa', '#f5c2e7', '#94e2d5', '#abadc8'},
}

-- Window Styling
-- config.window_background_opacity = 0.85
-- config.win32_system_backdrop = 'Acrylic'

-- Padding
config.window_padding = {
    left = '20pt',
    right = '20pt',
    top = '20pt',
    bottom = '20pt',
}

-- Hide native title bar
config.window_decorations = "RESIZE"
config.window_frame = {
    active_titlebar_bg = '#11111b',
    inactive_titlebar_bg = '#11111b',
}

-- For example, changing the initial geometry for new windows:
-- config.initial_cols = 120
-- config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font('FiraCode Nerd Font', {weight = 'Regular'})
config.font_size = 12.0

-- Cursor & Ui
config.default_cursor_style = 'BlinkingBar'
config.hide_tab_bar_if_only_one_tab = true

-- Finally, return the configuration to wezterm:
return config