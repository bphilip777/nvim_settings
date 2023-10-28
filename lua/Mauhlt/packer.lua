local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print ("Packer.lua failed")
	return
end

vim.cmd.packadd('packer.nvim')

return require("packer").startup(function(use)
	--Packer
	use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" }
	use { "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" }
	use { "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" }
	use { "numToStr/Comment.nvim", commit = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" }
	use { "JoosepAlviste/nvim-ts-context-commentstring", commit = "4d3a68c41a53add8804f471fcc49bb398fe8de08" }
	use { "kyazdani42/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" }
	use { "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" }
  	use { "akinsho/bufferline.nvim", commit = "83bf4dc7bff642e145c8b4547aa596803a8b4dc4" }
	use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" }
  	use { "nvim-lualine/lualine.nvim", commit = "a52f078026b27694d2290e34efa61a6e4a690621" }
  	use { "akinsho/toggleterm.nvim", commit = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda" }
  	use { "ahmedkhalf/project.nvim", commit = "628de7e433dd503e782831fe150bb750e56e55d6" }
  	use { "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" }
  	use { "lukas-reineke/indent-blankline.nvim", commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" }
	use { "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" }
	use {"folke/which-key.nvim"}

	--Telescope
	use {
		'nvim-telescope/telescope.nvim', tag='0.1.0',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	--Colorschemes
	use {'morhetz/gruvbox'}
	use { "folke/tokyonight.nvim", commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764" }
	use { "lunarvim/darkplus.nvim", commit = "13ef9daad28d3cf6c5e793acfc16ddbf456e1c83" }

	--Trouble - identifies errors using treesitter
	use{
		'folke/trouble.nvim',
		config = function() 
			require("trouble").setup{
				icons=false,
			}
		end
	}
	
	--Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() 
			local ts_update = require('nvim-treesitter.install').update({with_sync=true})
			ts_update()
		end,
	}
	use('nvim-treesitter/playground')
	use('nvim-treesitter/nvim-treesitter-context')
	
	--Primeagen neovim modules
	use('theprimeagen/harpoon')
	use('theprimeagen/refactoring.nvim')
	
	--Undotree
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	
	--LSP
	use{
		'VonHeikemen/lsp-zero.nvim',
		branch='v1.x',
		requires = {
			--LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
	    {'jose-elias-alvarez/null-ls.nvim'},
			
      --Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'saadparwaiz1/cmp_luasnip'},

			--Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	
  --Illuminate
	use { "RRethy/vim-illuminate", commit = "a2e8476af3f3e993bb0d6477438aad3096512e42" }
end)
