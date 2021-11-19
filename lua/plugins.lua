-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
   -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'mhinz/vim-startify'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

   -- themes
    use 'arcticicestudio/nord-vim'
    use 'itchyny/lightline.vim' -- Fancier statusline
    use 'kyazdani42/nvim-web-devicons' -- nice icons

    -- tpope
    use 'tpope/vim-commentary'-- easy commentary
    use 'tpope/vim-surround'-- easy surrounding
    use 'tpope/vim-repeat'-- allows to repeat plugin mapppings with '.'
    -- git
    use 'tpope/vim-fugitive' -- Git commands in nvim
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }


   -- fuzzyfinder
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

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

    -- snippets
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use "rafamadriz/friendly-snippets"

    use 'folke/which-key.nvim' -- key bindings
end)
