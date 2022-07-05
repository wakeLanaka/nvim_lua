local g = vim.g
local exec = vim.api.nvim_exec -- execute Vimscript
local opt = vim.opt
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>.', ':e $MYVIMRC<cr>', {noremap = true})
map('n', '<leader>x', ':e $HOME/.config/xmonad/xmonad.hs<cr>', {noremap = true})

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
map('i', '<c-h>', '<esc><c-w>h', {noremap = true})
map('i', '<c-j>', '<esc><c-w>j', {noremap = true})
map('i', '<c-k>', '<esc><c-w>k', {noremap = true})
map('i', '<c-l>', '<esc><c-w>l', {noremap = true})

-- search
map('n', '*', '*N', {noremap = true})

-- fast substitution repetition
map('n', '&', ':&&<cr>', {noremap = true})
map('x', '&', ':&&<cr>', {noremap = true})

-- allows to move through display lines
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
map('n', '^', 'g^', {noremap = true})
map('n', '0', 'g0', {noremap = true})
map('n', '$', 'g$', {noremap = true})

map('n', 'J', 'gJ', {noremap = true})

-- in command-mode jump with <ctrl> + hl between words
map('c', '<c-h>', '<c-left>', {noremap = true})
map('c', '<c-l>', '<c-right>', {noremap = true})

-- Y yank until the end of line
map('n', 'Y', 'y$', { noremap = true })

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
-- map('n', '<', '<<', {noremap = true})
map('v', '>', '>gv', {noremap = true})
-- map('n', '>', '>>', {noremap = true})

-- FOLDS
-- map('n', 'zt', 'za', {noremap = true})
map('n', 'zO', 'zR', {noremap = true})
map('n', 'zC', 'zM', {noremap = true})

-- RESIZING
-- map('n', '<m-j>', ':resize -2<cr>', {noremap = true})
-- map('n', '<m-k>', ':resize +2<cr>', {noremap = true})
-- map('n', '<m-h>', ':vertical resize -2', {noremap = true})
-- map('n', '<m-l>', ':vertical resize +2', {noremap = true})

-- TELESCOPE
map('n', '<c-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<c-f>', '<cmd>lua require"telescope.builtin".live_grep(require("telescope.themes").get_dropdown({}))<cr>', { noremap = true, silent = true })
map('n', '<c-b>', '<cmd>Telescope buffers<cr>', {noremap = true})

-- open explorer
map('n', '<c-e>', '<cmd>NvimTreeToggle<cr>', {noremap = true})

-- INSERT
map('i', '<c-o>', '<c-o>o', {noremap = true})

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

-- QUICKFIX
-- map ('n', '<m-c>', '<cmd>lopen<cr>', {noremap = true})
-- map ('n', '<m-n>', '<cmd>lnext<cr>', {noremap = true})
-- map ('n', '<m-p>', '<cmd>lprevious<cr>', {noremap = true})

map ('n', '<m-n>', '<cmd>lua require("trouble").next({skip_groups = true, jump = true})<cr>', {noremap = true})
map ('n', '<m-p>', '<cmd>lua require("trouble").previous({skip_groups = true, jump = true})<cr>', {noremap = true})
