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
  'nvim-lua/plenary.nvim',
  'neovim/nvim-lspconfig',
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
      "nvim-telescope/telescope-file-browser.nvim"
    }
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

  {'github/copilot.vim', cond = false},
  {'kyazdani42/nvim-tree.lua', cond = false},
  {'lewis6991/gitsigns.nvim', cond = false},
  {'nvim-treesitter/playground', cond = false},
  {'scalameta/nvim-metals', cond = false},
})
