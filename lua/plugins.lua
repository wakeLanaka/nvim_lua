-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
   -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'windwp/nvim-autopairs'

    -- theme
    use '~/github/nvim_lua/themes/rose-theme'
    use '~/github/nvim_lua/themes/tokyonight.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- tpope
    use 'tpope/vim-commentary'-- easy commentary
    use 'tpope/vim-surround'-- easy surrounding
    use 'tpope/vim-repeat'-- allows to repeat plugin mapppings with '.'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-abolish'

    -- git
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }


   -- fuzzyfinder
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

   -- vim window navigation for tmux
    use 'christoomey/vim-tmux-navigator'

   -- Highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

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

    use 'folke/which-key.nvim' -- key bindings

    use 'lervag/vimtex'

    use 'preservim/vimux'

    -- use 'glepnir/dashboard-nvim'
   -- themes
    -- use 'arcticicestudio/nord-vim'
    -- use 'bluz71/vim-nightfly-guicolors'
    -- use "rafamadriz/friendly-snippets"

end)
