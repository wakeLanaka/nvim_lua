local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   'jose-elias-alvarez/null-ls.nvim',
   {'vimwiki/vimwiki',
     init = function()
       vim.g.vimwiki_list = {
         {
           path = '/home/reto/Sync/vimwiki',
           syntax = 'markdown',
           ext = 'md'
         }
       }
     end,
   },
   'nvim-lua/plenary.nvim',
   'neovim/nvim-lspconfig',
   {'lewis6991/gitsigns.nvim',
     init = function()
       require('gitsigns').setup()
     end,
   },
   'williamboman/mason.nvim',
   'williamboman/mason-lspconfig.nvim',
   'catppuccin/nvim',
   'nvim-lualine/lualine.nvim',
   {
     'hrsh7th/nvim-cmp',
     dependencies = {
       'hrsh7th/cmp-buffer',
       'hrsh7th/cmp-cmdline',
       'hrsh7th/cmp-path',
       'hrsh7th/cmp-nvim-lua',
       'hrsh7th/cmp-nvim-lsp',
       'hrsh7th/cmp-nvim-lsp-signature-help',
       'L3MON4D3/LuaSnip',
       'saadparwaiz1/cmp_luasnip'
     }
   },
   {
     'nvim-treesitter/nvim-treesitter',
     dependencies = {
       'nvim-treesitter/nvim-treesitter-textobjects',
     }
   },
   'kyazdani42/nvim-web-devicons',
   'numToStr/Comment.nvim',
   {
     'nvim-telescope/telescope.nvim',
     branch = '0.1.x',
     dependencies = {
       { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
     }
   },
  {
     "ThePrimeagen/refactoring.nvim",
     dependencies = {
       "nvim-lua/plenary.nvim",
       "nvim-treesitter/nvim-treesitter",
     },
     config = function()
       require("refactoring").setup()
     end,
   },
   'tpope/vim-abolish',
   'tpope/vim-fugitive',
   'tpope/vim-rhubarb',
   'tpope/vim-surround',
   'tpope/vim-repeat',
   'tpope/vim-speeddating',
   'christoomey/vim-tmux-navigator',
   'lervag/vimtex',
   'preservim/vimux',
   { dir = "~/github/refactor.nvim"},
   { dir = "~/github/enclosing.nvim"},
   { 'folke/which-key.nvim'--[[ , cond = false ]]},

   -- Disabled
   {'github/copilot.vim', cond = false},
   {'kyazdani42/nvim-tree.lua', cond = false},
   {'nvim-treesitter/playground', cond = false},
   {'scalameta/nvim-metals', cond = false},
})
