require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'catppuccin/nvim'

  use 'L3MON4D3/LuaSnip'

  use 'nvim-treesitter/nvim-treesitter'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'saadparwaiz1/cmp_luasnip'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'stevearc/aerial.nvim'

  use 'numToStr/Comment.nvim'

  use 'zegervdv/nrpattern.nvim'
  use 'kdheepak/tabline.nvim'

  use { 'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }}

  use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})

  use 'tpope/vim-abolish'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-speeddating'
  -- use 'tpope/vim-vinegar'

  use 'lervag/vimtex'

  use 'christoomey/vim-tmux-navigator'
  use 'preservim/vimux'
  use 'folke/which-key.nvim'
  use 'nvim-lualine/lualine.nvim'

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
end)
