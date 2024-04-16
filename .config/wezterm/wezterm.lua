-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.enable_wayland = true
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.animation_fps = 15

config.color_scheme = "Breeze"
config.font_dirs = { '/home/matheus/.local/share/fonts' }
config.warn_about_missing_glyphs = false
config.font = wezterm.font_with_fallback({
	{ family = "CaskaydiaCove Nerd Font", weight = "Light" },
	{ family = "Cascadia Code", weight = "Light" },
	"Monospace",
})

config.font_size = 11.0
config.line_height = 1

config.freetype_load_target = "Light"
config.freetype_load_flags = "NO_HINTING"

config.enable_scroll_bar = true
config.min_scroll_bar_height = "1cell"
config.use_resize_increments = true
config.adjust_window_size_when_changing_font_size = false

config.window_background_opacity = 1
config.colors = {
	background = "#232627",
}
config.enable_tab_bar = false
--config.hide_tab_bar_if_only_one_tab = true
--config.use_fancy_tab_bar = false

config.window_padding = {
	left = "5px",
	right = "5px",
	top = "0px",
	bottom = "0px",
}

config.initial_cols = 190
config.initial_rows = 45

config.disable_default_key_bindings = true
--config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 2000 }
config.keys = {
	{
		key = "W",
		mods = "CTRL",
		action = wezterm.action.ResetFontAndWindowSize,
	},
	{
		key = "D",
		mods = "CTRL",
		action = wezterm.action.ShowDebugOverlay,
	},
	{
		key = "C",
		mods = "CTRL",
		action = wezterm.action.CopyTo("Clipboard"),
	},
	{
		key = "V",
		mods = "CTRL",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "F11",
		mods = "",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- and finally, return the configuration to wezterm
return config
