-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

config.color_scheme = "Batman"
-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local act = wezterm.action

-- This is where you actually apply your config choices

-- lanuch zsh by default
config.default_prog = { "/usr/bin/bash", "-l" }
-- config.default_prog = { 'powershell', '-NoLogo' }

config.detect_password_input = true
config.window_background_opacity = 0.65

config.font = wezterm.font_with_fallback({
	--"SpaceMono Nerd Font Mono",
	"JetBrainsMono Nerd Font Mono",
	--"Hack Nerd Font Mono",
	--"Cascadia Mono",
	-- "FiraCode Nerd Font",
})
config.font_size = 18.0

config.enable_tab_bar = true

config.window_padding = {
	left = 20,
	right = 20,
	top = 10,
	bottom = 10,
}

config.window_close_confirmation = "NeverPrompt"

-- cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 600
config.cursor_blink_ease_out = "Linear"
config.initial_cols = 115 -- Задайте начальное количество столбцов
config.initial_rows = 28 -- Задайте начальное количество строк

config.enable_tab_bar = false -- Отключает строку с вкладками
config.window_decorations = "NONE"

-- keymappings
config.keys = {
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Next"),
	},
}

-- and finally, return the configuration to wezterm
return config
