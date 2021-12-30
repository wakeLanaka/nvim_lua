#! /usr/bin/bash

mkdir -p ~/.local/share/nvim/site/pack/completion/start/
mkdir -p ~/.local/share/nvim/site/pack/git/start/
mkdir -p ~/.local/share/nvim/site/pack/lsp/start/
mkdir -p ~/.local/share/nvim/site/pack/plugins/start/
mkdir -p ~/.local/share/nvim/site/pack/themes/start/

# completion
git clone git@github.com:hrsh7th/cmp-buffer.git \
~/.local/share/nvim/site/pack/completion/start/cmp-buffer

git clone git@github.com:hrsh7th/cmp-cmdline.git \
~/.local/share/nvim/site/pack/completion/start/cmp-cmdline

git clone git@github.com:hrsh7th/cmp-nvim-lsp.git \
~/.local/share/nvim/site/pack/completion/start/cmp-nvim-lsp

git clone git@github.com:hrsh7th/cmp-path.git \
~/.local/share/nvim/site/pack/completion/start/cmp-path

git clone git@github.com:hrsh7th/cmp-vsnip.git \
~/.local/share/nvim/site/pack/completion/start/cmp-vsnip

git clone git@github.com:hrsh7th/nvim-cmp.git \
~/.local/share/nvim/site/pack/completion/start/nvim-cmp

# git
git clone git@github.com:lewis6991/gitsigns.nvim.git \
~/.local/share/nvim/site/pack/git/start/gitsigns

# lsp
git clone git@github.com:onsails/lspkind-nvim.git \
~/.local/share/nvim/site/pack/lsp/start/lspkind

git clone git@github.com:neovim/nvim-lspconfig.git \
~/.local/share/nvim/site/pack/lsp/start/lspconfig

# plugins
git clone git@github.com:windwp/nvim-autopairs.git \
~/.local/share/nvim/site/pack/plugins/start/autopairs

git clone git@github.com:kyazdani42/nvim-tree.lua.git \
~/.local/share/nvim/site/pack/plugins/start/nvim-tree

git clone git@github.com:nvim-treesitter/nvim-treesitter.git \
~/.local/share/nvim/site/pack/plugins/start/treesitter

git clone git@github.com:kyazdani42/nvim-web-devicons.git \
~/.local/share/nvim/site/pack/plugins/start/devicons

git clone git@github.com:nvim-lua/plenary.nvim.git \
~/.local/share/nvim/site/pack/plugins/start/plenary

git clone git@github.com:nvim-telescope/telescope-fzf-native.nvim.git \
~/.local/share/nvim/site/pack/plugins/start/telescope-fzf-native

git clone git@github.com:nvim-telescope/telescope.nvim.git \
~/.local/share/nvim/site/pack/plugins/start/telescope

git clone git@github.com:tpope/vim-abolish.git \
~/.local/share/nvim/site/pack/plugins/start/vim-abolish

git clone git@github.com:tpope/vim-commentary.git \
~/.local/share/nvim/site/pack/plugins/start/vim-commentary

git clone git@github.com:tpope/vim-surround.git \
~/.local/share/nvim/site/pack/plugins/start/vim-surround

git clone git@github.com:lervag/vimtex.git \
~/.local/share/nvim/site/pack/plugins/start/vimtex

git clone git@github.com:christoomey/vim-tmux-navigator.git \
~/.local/share/nvim/site/pack/plugins/start/vim-tmux-navigator

git clone git@github.com:preservim/vimux.git \
~/.local/share/nvim/site/pack/plugins/start/vimux

git clone git@github.com:hrsh7th/vim-vsnip.git \
~/.local/share/nvim/site/pack/plugins/start/vim-vsnip

git clone git@github.com:folke/which-key.nvim.git \
~/.local/share/nvim/site/pack/plugins/start/which-key

git clone git@github.com:preservim/tagbar.git \
~/.local/share/nvim/site/pack/plugins/start/tagbar

# theme
git clone git@github.com:nvim-lualine/lualine.nvim.git \
~/.local/share/nvim/site/pack/plugins/start/lualine

ln -s ~/.config/nvim/themes/rose-theme/ \
~/.local/share/nvim/site/pack/themes/start/

ln -s ~/.config/nvim/themes/tokyonight.nvim/ \
~/.local/share/nvim/site/pack/themes/start/
