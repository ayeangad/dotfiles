return {
	-- 1. Configure TokyoNight to use the "night" style
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "night", -- Forces the tokyonight-night variant
			transparent = false, -- Change to true if you want a see-through background!
		},
	},

	-- 2. Force LazyVim to use it as the default theme
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
}
