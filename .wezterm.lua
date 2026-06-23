-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.default_prog = { "C:\\Users\\sh7747\\AppData\\Local\\Programs\\Git\\bin\\bash.exe", "-l", "-i" }

-- For example, changing the initial geometry for new windows:
config.initial_cols = 100
config.initial_rows = 24

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = 'Tokyo Night'

-- tab bar
config.window_frame = {
	font_size = 12.0,
}

config.use_fancy_tab_bar = false
config.colors = {
	tab_bar = {
		background = 'rgba(0, 0, 0, 0.93)',
		inactive_tab = {
			bg_color = 'rgba(0, 0, 0, 0.93)',
		},
	},
}

config.window_background_opacity = 0.93
-- Finally, return the configuration to wezterm:
return config
