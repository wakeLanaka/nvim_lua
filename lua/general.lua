vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.breakindent = true -- wrapped text will also get indented
vim.o.hidden = true -- enable background buffers
vim.o.ignorecase = true -- ignore case letters when search
vim.o.mouse = 'a' -- allows working with mouse
vim.o.smartcase = true
vim.o.spellsuggest='best,10'
vim.o.termguicolors = true
-- vim.o.formatoptions = vim.o.formatoptions .. "c"
vim.o.thesaurus="~/.config/nvim/thesaurus/openthesaurus.txt"
vim.o.updatetime = 250 -- Decrease update time
vim.opt.backup = false -- would create a backup-file everytime a file is overwritten
vim.opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
vim.opt.colorcolumn = "80" -- display 80th column
vim.opt.cursorline = true -- display current row of cursor
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.laststatus = 3 -- set global statusline
vim.opt.linebreak = true -- wrap on word boundary
vim.opt.list = true
vim.opt.numberwidth = 4 -- amount of columns for numbers
vim.opt.shiftround = true -- rounds indent to multiple of shiftwidth
vim.opt.shiftwidth = 2 -- shift 2 spaces when tab
vim.opt.showmode = false
vim.opt.showtabline = 1
vim.opt.smartindent = true -- autoindent new lines
vim.opt.softtabstop = 0
vim.opt.splitbelow = true -- orizontal split to the bottom
vim.opt.splitright = true -- vertical split to the right
vim.opt.swapfile = false -- do not generate any swafiles
vim.opt.tabstop = 2 -- 1 tab == 2 spaces
vim.opt.textwidth = 80 -- auto new line at 80th column
vim.opt.undofile = true
vim.opt.undolevels=1000
vim.opt.viewdir = '$HOME/.config/nvim/views'
vim.opt.writebackup = false
vim.wo.number = true -- display line numbers
vim.wo.relativenumber = true -- display relativenumbers to current line
vim.wo.signcolumn = 'yes' -- where to display icons on number column


-- FUNCTIONS
-- auto-save fold views
-- vim.api.nvim_exec( [[
-- augroup remember_folds
--     autocmd!
--     autocmd BufWinLeave ?* silent! mkview
--     autocmd BufWinEnter ?* silent! loadview
-- augroup end
-- ]], false)

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- don't auto commenting new lines
vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- When editing a file, always jump to the last known cursor position.
-- Don't do it for commit messages, when the position is invalid, or when
-- inside an event handler (happens when dropping a file on gvim).
vim.api.nvim_exec( [[
autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
]], false)
