-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
   -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'glepnir/dashboard-nvim'

    use 'preservim/vimux'

    use 'kyazdani42/nvim-web-devicons' -- nice icons

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    use 'windwp/nvim-autopairs'

    use '~/github/nvim_lua/themes/rose-theme'

   -- themes
    -- use 'arcticicestudio/nord-vim'
    -- use 'bluz71/vim-nightfly-guicolors'
    -- use 'folke/tokyonight.nvim'

    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }


    -- tpope
    use 'tpope/vim-commentary'-- easy commentary
    use 'tpope/vim-surround'-- easy surrounding
    use 'tpope/vim-repeat'-- allows to repeat plugin mapppings with '.'
    use 'tpope/vim-unimpaired'
    -- git
    use 'tpope/vim-fugitive' -- Git commands in nvim
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }


   -- fuzzyfinder
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

   -- vim window navigation for tmux
    use 'christoomey/vim-tmux-navigator'

   -- Highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/nvim-treesitter-refactor'

   -- lsp server
    use 'neovim/nvim-lspconfig'


   -- completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'onsails/lspkind-nvim'

    -- snippets
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use "rafamadriz/friendly-snippets"

    use 'folke/which-key.nvim' -- key bindings

    use 'lervag/vimtex'
end)
