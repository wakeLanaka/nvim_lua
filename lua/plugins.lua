-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
   -- Packer can manage itself
    use 'wbthomason/packer.nvim'

   -- themes
    use 'arcticicestudio/nord-vim'
    use 'itchyny/lightline.vim' -- Fancier statusline
   
    -- tpope
    use 'tpope/vim-commentary'-- easy commentary
    use 'tpope/vim-surround'-- easy surrounding
    use 'tpope/vim-repeat'-- allows to repeat plugin mapppings with '.'
    -- git
    use 'tpope/vim-fugitive' -- Git commands in nvim
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    use 'ludovicchabant/vim-gutentags' -- Automatic tags management

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
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use 'folke/which-key.nvim'
end)
