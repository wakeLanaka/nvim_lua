require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use '~/github/nvim_lua/themes/tokyonight.nvim'
  use '~/github/nvim_lua/themes/rose-theme'
  use 'catppuccin/nvim'

  use 'L3MON4D3/LuaSnip'

  use { 'nvim-treesitter/nvim-treesitter'}

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'folke/trouble.nvim'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'stevearc/aerial.nvim'

  use 'numToStr/Comment.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }}

  use 'brymer-meneses/grammar-guard.nvim'

  use 'tpope/vim-abolish'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-speeddating'

  use 'lervag/vimtex'
  use 'christoomey/vim-tmux-navigator'
  use 'preservim/vimux'
  use 'folke/which-key.nvim'
  use 'nvim-lualine/lualine.nvim'

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
end)
