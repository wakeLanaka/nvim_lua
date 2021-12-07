local exec = vim.api.nvim_exec 	-- execute Vimscript

-- GENERAL
vim.opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
vim.o.mouse = 'a' -- allows working with mouse

vim.wo.number = true -- display line numbers
-- vim.wo.relativenumber = true
vim.opt.numberwidth = 5 -- amount of columns for numbers
vim.opt.foldcolumn = '1' -- reserve 1 column for folds
vim.opt.showtabline = 0 -- never display tabs
vim.opt.showmode = false

vim.opt.colorcolumn = '80' -- display 80th column
vim.opt.cursorline = true -- display current row of cursor

vim.opt.splitright = true -- vertical split to the right
vim.opt.splitbelow = true -- orizontal split to the bottom
vim.opt.linebreak = true -- wrap on word boundary

vim.o.hidden = true -- enable background buffers

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- SEARCH
vim.o.ignorecase = true -- ignore case letters when search
vim.o.smartcase = true -- ignore lowercase for the whole pattern

-- INDENT
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.shiftwidth = 2 -- shift 2 spaces when tab
vim.opt.tabstop = 2 -- 1 tab == 2 spaces
vim.opt.softtabstop = 0
-- vim.opt.smartindent = true -- autoindent new lines
vim.opt.shiftround = true -- rounds indent to multiple of shiftwidth
vim.o.breakindent = true -- wrapped text will also get indented

-- UNDO
vim.opt.undofile = true
vim.opt.undolevels=1000

vim.opt.backup = false -- would create a backup-file everytime a file is overwritten
vim.opt.writebackup = false

vim.opt.viewdir = '$HOME/.config/nvim/views'

vim.opt.swapfile = false -- do not generate any swafiles


-- FUNCTIONS
-- auto-save fold views
exec( [[
augroup remember_folds
    autocmd!
    autocmd BufWinLeave ?* silent! mkview
    autocmd BufWinEnter ?* silent! loadview
augroup end
]], false)

-- Highlight on yank
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
  false
)

-- don't auto commenting new lines
vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- When editing a file, always jump to the last known cursor position.
-- Don't do it for commit messages, when the position is invalid, or when
-- inside an event handler (happens when dropping a file on gvim).
exec([[
autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
]], false)
