return {
	-- 1. Disable LazyVim's default explorer (Neo-tree)
	{
		"nvim-neo-tree/neo-tree.nvim",
		enabled = false,
	},

	-- 2. Setup Yazi to take over
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			-- Hijack Space + e to open Yazi in the directory of your current file
			{
				"<leader>e",
				"<cmd>Yazi<cr>",
				desc = "Open Yazi at current file",
			},
			-- Hijack Space + E to open Yazi in the root directory of your project
			{
				"<leader>E",
				"<cmd>Yazi cwd<cr>",
				desc = "Open Yazi in working directory",
			},
			-- Optional: A quick key to toggle Yazi
			{
				"<leader>-",
				"<cmd>Yazi<cr>",
				desc = "Toggle Yazi",
			},
		},
		opts = {
			-- This makes Neovim open Yazi automatically if you run `nvim .` in the terminal
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
		},
	},
}
