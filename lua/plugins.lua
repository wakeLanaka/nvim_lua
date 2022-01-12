return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use '~/github/nvim_lua/themes/tokyonight.nvim'
  use '~/github/nvim_lua/themes/rose-theme'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/nvim-cmp'

  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'folke/trouble.nvim'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }}

  use 'tpope/vim-abolish'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  use 'lervag/vimtex'
  use 'christoomey/vim-tmux-navigator'
  use 'preservim/vimux'
  use 'folke/which-key.nvim'
  use 'preservim/tagbar'
  use 'nvim-lualine/lualine.nvim'

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

end)
