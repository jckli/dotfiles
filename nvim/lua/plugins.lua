vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use {
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
		config = function()
			require "config.nvim-tree"
		end
	}

	use {
		"andweeb/presence.nvim",
		config = function()
			require "config.presence"
		end
	}

	use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			require "config.catppuccin"
		end
	}

	use {
		"nvim-lualine/lualine.nvim",
	  	requires = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require "config.lualine"
		end
	}

	use {
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require "config.bufferline"
		end
	}

	use {
		"neovim/nvim-lspconfig",
		config = function()
			require "config.lspconfig"
		end
	}

	use {
		"hrsh7th/nvim-cmp",
		requires = {
		    "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require "config.cmp"
		end
	}

	use "onsails/lspkind.nvim"

	use {
		"L3MON4D3/LuaSnip",
		tag = "v<CurrentMajor>.*",
		run = "make install_jsregexp"
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"windwp/nvim-ts-autotag", "windwp/nvim-autopairs",
		},
		run = ":TSUpdate",
		config = function()
			require "config.treesitter"
		end
	}

	use {
		"github/copilot.vim"
	}

	use {
	  	"nvim-telescope/telescope.nvim", tag = "0.1.1",
		requires = { {"nvim-lua/plenary.nvim"} },
		config = function ()
			require "config.telescope"
		end
	}
	use {
		"nvimdev/guard.nvim",
		config = function()
			require "config.guard"
		end
	}
end)
