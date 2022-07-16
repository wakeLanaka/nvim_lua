local map = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<leader>.', ':e $MYVIMRC<cr>', {noremap = true, desc = "config"})
map('n', '<leader>x', ':e $HOME/.config/xmonad/xmonad.hs<cr>', {noremap = true, desc = "xmonad"})

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
map('v', '>', '>gv', {noremap = true})

-- FOLDS
map('n', 'zO', 'zR', {noremap = true})
map('n', 'zC', 'zM', {noremap = true})

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

-- DIAGNOSTIC
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>ld', vim.diagnostic.open_float, { noremap=true, silent=true, desc="line diagnostics"})
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>lq', vim.diagnostic.setloclist, { noremap=true, silent=true, desc="diagnostic loc"})

-- SPELLING
map('n', '<leader>ss',"<cmd>set spell!<cr>",{desc = "start"})
map('n', '<leader>sd',"<cmd>set spelllang=de<cr>",{desc = "deutsch"})
map('n', '<leader>se',"<cmd>set spelllang=en<cr>",{desc = "english"})

-- NETRW
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end

    bind('<c-l>', '<c-w>l')
    vim.keymap.set('n', '<c-n>', '<c-l>', {noremap = true, buffer = true})
  end
})
