-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
if wezterm.target_triple:find('windows') then
	config.default_prog = { "C:\\Users\\sh7747\\AppData\\Local\\Programs\\Git\\bin\\bash.exe", "-l", "-i" }
end

-- For example, changing the initial geometry for new windows:
config.initial_cols = 100
config.initial_rows = 24

-- or, changing the font size and color scheme.
if wezterm.target_triple:find('windows') then
	config.font_size = 14
else
	config.font_size = 18
end
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
			fg_color = '#888888',
		},
	},
}

config.window_background_opacity = 0.93
-- Finally, return the configuration to wezterm:
return config
