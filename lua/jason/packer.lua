-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'folke/tokyonight.nvim',
	  as = 'tokyonight'
  })

  use('mbbill/undotree')

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use('tpope/vim-fugitive')

  use({
      'folke/todo-comments.nvim',
      requires = "nvim-lua/plenary.nvim",
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use('ThePrimeagen/harpoon')

  -- Live markdown preview in browser
  -- NOTE: requires that npm is installed
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)