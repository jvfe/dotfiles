-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "ellisonleao/gruvbox.nvim" }

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('jvfe/nextflow-vim')
  
  use("williamboman/mason.nvim")
  use("onsails/lspkind-nvim")
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  
  use("folke/zen-mode.nvim")
  use("eandrju/cellular-automaton.nvim")
  use('ThePrimeagen/vim-be-good')
  
  -- file tree
  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })
  use('nvim-tree/nvim-web-devicons')
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

--autopairs

use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
        -- If you want to automatically add `(` after selecting a function or method
        local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
        local cmp = require 'cmp'
        cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end
}

-- indent guides
use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup {}
    end
}


end)
