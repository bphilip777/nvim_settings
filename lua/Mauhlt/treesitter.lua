local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  print("Nvim treesitter failed.")
  return
end

configs.setup({
	ensure_installed =
  {
    'javascript',
    'typescript',
    'c',
    'lua',
    'rust',
    'zig',
    'cpp',
    'python',
    'matlab',
  },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable=true,
		additional_vim_regex_highlighting = false,
	},
  autopairs = {
    enable=true,
  },
  indent = {
    enable=true,
    disable={},
  },
})
