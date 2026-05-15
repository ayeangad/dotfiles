if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

if vim.g.neovide then
	-- The video uses a quick, snappy jump. 0.13 is the classic default that gives
	-- this exact "buttery smooth" vibe. (If you still want it *slightly* slower, try 0.15).
	vim.g.neovide_cursor_animation_length = 0.13

	-- He keeps the trail relatively tight (0.8) so it looks like a solid block moving,
	-- rather than a long, stretched-out shooting star.
	vim.g.neovide_cursor_trail_size = 0.8

	-- Important: He has no extra particle effects active, just the clean block.
	vim.g.neovide_cursor_vfx_mode = ""

	-- To match the smooth scrolling he demonstrates with his trackpad tool
	vim.g.neovide_scroll_animation_length = 0.3
end
