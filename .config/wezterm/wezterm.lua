-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	cursor_blink_rate = 500,
	color_scheme = "Nord (Gogh)",
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font", weight = "Regular" }, -- 1순위: 영문+아이콘
		{ family = "NanumSquare", weight = "Regular" }, -- 2순위: 한글 (macOS 기본)
		-- 또는 { family = "D2Coding", weight = "Regular" },         -- D2Coding (Linux/mac)
		-- 또는 { family = "Noto Sans KR", weight = "Regular" },     -- Noto Sans (범용)JetBrains Mono", -- 메인 코드 폰트
	}),
	font_size = 13,
	initial_cols = 150,
	initial_rows = 60,
}

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- and finally, return the configuration to wezterm
return config
