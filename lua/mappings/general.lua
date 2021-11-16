local g = vim.g
local exec = vim.api.nvim_exec 	-- execute Vimscript
local opt = vim.opt
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>.', ':e $MYVIMRC<cr>', {noremap = true})

-- map jj to esc
map('i', 'jj', '<esc>', {noremap = true})
map('c', 'jj', '<esc>', {noremap = true})
map('s', 'jj', '<esc>', {noremap = true})

-- Fast split navigation with <ctrl> + hjkl
map('n', '<c-h>', '<c-w>h', {noremap = true})
map('n', '<c-j>', '<c-w>j', {noremap = true})
map('n', '<c-k>', '<c-w>k', {noremap = true})
map('n', '<c-l>', '<c-w>l', {noremap = true})
map('n', '<c-c>', '<c-w>c', {noremap = true})

-- allows to move through display lines
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', '^', 'g^', {noremap = true})
map('n', '0', 'g0', {noremap = true})
map('n', '$', 'g$', {noremap = true})

-- in command-mode jump with <ctrl> + hl between words
map('c', '<c-h>', '<c-left>', {noremap = true})
map('c', '<c-l>', '<c-right>', {noremap = true})

-- Y yank until the end of line
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })

-- Tab navigation
map('n', '<m-1>', '1gt', {noremap = true})
map('n', '<m-2>', '2gt', {noremap = true})
map('n', '<m-3>', '3gt', {noremap = true})
map('n', '<m-4>', '4gt', {noremap = true})
map('n', '<m-5>', '5gt', {noremap = true})
map('n', '<m-6>', '6gt', {noremap = true})
map('n', '<m-7>', '7gt', {noremap = true})
map('n', '<m-8>', '8gt', {noremap = true})
map('n', '<m-9>', '9gt', {noremap = true})
map('n', '<c-t>', ':tabnew<cr>', {noremap = true})

-- save file
map('n', '<c-s>', ':w<cr>', {noremap = true})

-- shift mappings
map('v', '<', '<gv', {noremap = true})
map('n', '<', '<<', {noremap = true})
map('v', '>', '>gv', {noremap = true})
map('n', '>', '>>', {noremap = true})

-- FOLDS
map('n', 'zt', 'za', {noremap = true})
map('n', 'zO', 'zR', {noremap = true})
map('n', 'zC', 'zM', {noremap = true})

-- RESIZING
map('n', '<m-j>', ':resize -2<cr>', {noremap = true})
map('n', '<m-k>', ':resize +2<cr>', {noremap = true})
map('n', '<m-h>', ':vertical resize -2', {noremap = true})
map('n', '<m-l>', ':vertical resize +2', {noremap = true})

-- COMMAND MODE
map('c', '<m-b>', '<s-left>', {noremap = true})
map('c', '<m-w>', '<s-right>', {noremap = true})
map('c', '<m-h>', '<left>', {noremap = true})
map('c', '<m-l>', '<right>', {noremap = true})

-- UNBIND
map('n', 'Q', '<nop>', {noremap = true})
map('n', '<up>', '<nop>', {noremap = true})
map('n', '<down>', '<nop>', {noremap = true})
map('n', '<left>', '<nop>', {noremap = true})
map('n', '<right>', '<nop>', {noremap = true})
map('i', '<up>', '<nop>', {noremap = true})
map('i', '<down>', '<nop>', {noremap = true})
map('i', '<left>', '<nop>', {noremap = true})
map('i', '<right>', '<nop>', {noremap = true})
map('i', '<c-k>', '<nop>', {noremap = true})



-- TODO does not work
-- trick to trigger wildmenu with <c-space>
-- vim.opt.wildcharm = vim.fn.char2nr('^Z')
-- map('c', '<c-space>', '<c-z>', {expr = true})

-- exec([[
-- set wildcharm=<c-z>
-- cnoremap <expr><C-space> "\<C-z>"
-- ]], false)
