-- local colorscheme = "tokyonight"
-- local colorscheme = "darkplus"
local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	print "Colorscheme.lua failed"
	return
end
