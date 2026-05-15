vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
	vim.opt.cmdheight = 0
end

-- File types
vim.filetype.add({
	extension = {
		mdx = "mdx",
	},
})

vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_cmp = "blink.cmp"

vim.diagnostic.config({ virtual_text = false })
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		vim.diagnostic.config({ virtual_text = false })
	end,
})

if vim.g.neovide then
	-- The core speed of the slide. Lower is faster.
	-- 0.04 provides an incredibly tight, responsive snap between characters.
	vim.g.neovide_cursor_animation_length = 0.04

	-- The length of the motion blur. 0.8 keeps it short and solid.
	vim.g.neovide_cursor_trail_size = 0.8

	-- Hardware-accelerated smooth scrolling when jumping pages (Ctrl+D / Ctrl+U)
	vim.g.neovide_scroll_animation_length = 0.15

	-- Disables the smooth caret while actively typing so character input feels instantaneous
	vim.g.neovide_cursor_animate_in_insert_mode = false
end

vim.opt.clipboard = "unnamedplus"

-- Force Neovim to use the standard bash shell instead of fish
vim.opt.shell = "/bin/bash"

-- Always show the tabline at the top of the screen
vim.opt.showtabline = 2

vim.opt.mouse = "a"

-- Shift current line number left, and relative numbers right
vim.opt.statuscolumn = "%s %{v:relnum==0?v:lnum:''}%=%{v:relnum?v:relnum:''} "

-- Set the main colorscheme
-- vim.cmd.colorscheme("tokyonight-night")
-- Forces Neovim to process the Escape key instantly
vim.opt.ttimeoutlen = 10

vim.g.have_nerd_font = true

-- Tells Neovim to use the "expr" (expression) method for folding
vim.opt.foldmethod = "expr"
-- Tells Neovim to use Treesitter's logic to calculate those expressions
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- This ensures files open with all folds expanded (99 = very deep)
vim.opt.foldlevel = 99
-- This shows the column on the left
vim.opt.foldcolumn = "1"
vim.opt.fillchars = { foldopen = "", foldclose = "", fold = " ", foldsep = " " }
