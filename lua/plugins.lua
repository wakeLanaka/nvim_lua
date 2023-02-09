-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'j-hui/fidget.nvim',
    },
  }

  use 'catppuccin/nvim'
  use 'nvim-lualine/lualine.nvim'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use "nvim-treesitter/playground"

  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  use '/home/reto/github/refactor.nvim'

  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'stevearc/aerial.nvim'

  use 'numToStr/Comment.nvim'

  use 'zegervdv/nrpattern.nvim'
  use 'kdheepak/tabline.nvim'

  use 'nvim-lua/plenary.nvim'

  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x'}
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'scalameta/nvim-metals'

  use 'tpope/vim-abolish'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-speeddating'
  use 'lewis6991/gitsigns.nvim'

  use 'christoomey/vim-tmux-navigator'
  use 'lervag/vimtex'
  use 'preservim/vimux'
  use 'folke/which-key.nvim'
end)
