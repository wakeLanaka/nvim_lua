vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>.', ':e $MYVIMRC<cr>', { noremap = true, desc = "[.]config" })
vim.keymap.set('n', '<leader>hx', ':e $HOME/.config/xmonad/xmonad.hs<cr>', { noremap = true, desc = "[x]monad" })
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<cr>", { desc = "[a]erial" })
vim.keymap.set('n', '<leader>q', ':b #|bd #<cr>', { silent = true, desc = "[q]uit buffer" })
vim.keymap.set('n', '<leader>m', ':messages<cr>', { noremap = true, desc = "[m]essages" })

-- vim.keymap.set('n', '<leader>d', '"_d', { noremap = true, desc = ""})
-- vim.keymap.set('n', '<leader>c', '"_c', { noremap = true, desc = ""})

vim.keymap.set('n', '<c-d>', '<c-d>zz', { noremap = true })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { noremap = true })

-- map jj to esc
vim.keymap.set('i', 'jj', '<esc>', { noremap = true })
vim.keymap.set('c', 'jj', '<esc>', { noremap = true })
vim.keymap.set('s', 'jj', '<esc>', { noremap = true })

-- Fast split navigation with <ctrl> + hjkl
vim.keymap.set('n', '<c-h>', '<c-w>h', { noremap = true })
vim.keymap.set('n', '<c-j>', '<c-w>j', { noremap = true })
vim.keymap.set('n', '<c-k>', '<c-w>k', { noremap = true })
vim.keymap.set('n', '<c-l>', '<c-w>l', { noremap = true })
vim.keymap.set('n', '<c-c>', '<c-w>c', { noremap = true })
-- vim.keymap.set('i', '<c-h>', '<esc><c-w>h', { noremap = true })
-- vim.keymap.set('i', '<c-j>', '<esc><c-w>j', { noremap = true })
-- vim.keymap.set('i', '<c-k>', '<esc><c-w>k', { noremap = true })
-- vim.keymap.set('i', '<c-l>', '<esc><c-w>l', { noremap = true })

-- fast substitution repetition
vim.keymap.set('n', '&', ':&&<cr>', { noremap = true })
vim.keymap.set('x', '&', ':&&<cr>', { noremap = true })

-- allows to move through display lines
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', '^', 'g^', { noremap = true })
vim.keymap.set('n', '0', 'g0', { noremap = true })
vim.keymap.set('n', '$', 'g$', { noremap = true })

vim.keymap.set('n', 'J', 'gJ', { noremap = true })

-- Y yank until the end of line
vim.keymap.set('n', 'Y', 'y$', { noremap = true })

-- Tab navigation
vim.keymap.set('n', '<m-1>', '1gt', { noremap = true })
vim.keymap.set('n', '<m-2>', '2gt', { noremap = true })
vim.keymap.set('n', '<m-3>', '3gt', { noremap = true })
vim.keymap.set('n', '<m-4>', '4gt', { noremap = true })
vim.keymap.set('n', '<m-5>', '5gt', { noremap = true })
vim.keymap.set('n', '<m-6>', '6gt', { noremap = true })
vim.keymap.set('n', '<m-7>', '7gt', { noremap = true })
vim.keymap.set('n', '<m-8>', '8gt', { noremap = true })
vim.keymap.set('n', '<m-9>', '9gt', { noremap = true })
vim.keymap.set('n', '<c-t>', ':tabnew<cr>', { noremap = true })

-- save file
vim.keymap.set('n', '<c-s>', ':w<cr>', { noremap = true })

-- shift mappings
vim.keymap.set('v', '<', '<gv', { noremap = true })
vim.keymap.set('v', '>', '>gv', { noremap = true })

-- FOLDS
vim.keymap.set('n', 'zO', 'zR', { noremap = true })
vim.keymap.set('n', 'zC', 'zM', { noremap = true })

-- INSERT
vim.keymap.set('i', '<c-k>', '<c-o>O', { noremap = true })
vim.keymap.set('i', '<c-e>', '<c-o>A', { noremap = true })
vim.keymap.set('i', '<c-a>', '<c-o>^', { noremap = true })

-- COMMAND MODE
vim.keymap.set('c', '<m-b>', '<s-left>', { noremap = true })
vim.keymap.set('c', '<m-w>', '<s-right>', { noremap = true })
vim.keymap.set('c', '<m-h>', '<left>', { noremap = true })
vim.keymap.set('c', '<m-l>', '<right>', { noremap = true })
-- in command-mode jump with <ctrl> + hl between words
-- vim.keymap.set('c', '<c-h>', '<c-left>', { noremap = true })
-- vim.keymap.set('c', '<c-l>', '<c-right>', { noremap = true })

-- UNBIND
vim.keymap.set('n', 'Q', '<nop>', { noremap = true })
vim.keymap.set('n', '<up>', '<nop>', { noremap = true })
vim.keymap.set('n', '<down>', '<nop>', { noremap = true })
vim.keymap.set('n', '<left>', '<nop>', { noremap = true })
vim.keymap.set('n', '<right>', '<nop>', { noremap = true })
vim.keymap.set('i', '<up>', '<nop>', { noremap = true })
vim.keymap.set('i', '<down>', '<nop>', { noremap = true })
vim.keymap.set('i', '<left>', '<nop>', { noremap = true })
vim.keymap.set('i', '<right>', '<nop>', { noremap = true })

-- SPELLING
vim.keymap.set('n', '<leader>ss', "<cmd>set spell!<cr>", { desc = "[s]tart" })
vim.keymap.set('n', '<leader>sd', "<cmd>set spelllang=de<cr>", { desc = "[d]eutsch" })
vim.keymap.set('n', '<leader>se', "<cmd>set spelllang=en<cr>", { desc = "[e]nglish" })

-- QUICKFIX
vim.keymap.set('n', '<M-q>', "<cmd>copen<cr>", { noremap = true })
vim.keymap.set('n', '<M-n>', "<cmd>cn<cr>", { noremap = true })
vim.keymap.set('n', '<M-p>', "<cmd>cp<cr>", { noremap = true })

vim.keymap.set("n", "<leader>x%", "<cmd>w<cr><cmd>source %<cr>", {noremap = true, desc = "execute current file"})
vim.keymap.set("n", "<leader>xt", "<Plug>PlenaryTestFile", {noremap = true, desc = "[t]est file"})

vim.keymap.set("n", "<leader>t", "<cmd>TSPlaygroundToggle<cr>", {noremap = true, desc = "[t]reesitter playground"})

vim.keymap.set("n", "<leader>rp", "<cmd>lua require('refactor').print_identifier()<cr>")
vim.keymap.set("n", "<leader>rd", "<cmd>lua require('refactor').delete_printers()<cr>")
vim.keymap.set("v", "<leader>rx", "<cmd>lua require('refactor').extract_method()<cr>")
vim.keymap.set("n", "<leader>rx", "<cmd>lua require('refactor').extract_method()<cr>")
vim.keymap.set("i", "<C-l>", "<cmd>lua require('enclosing').close_enclosing()<cr>")

-- toggle search highlight
vim.keymap.set("n", "<M-h>", function()
  if vim.v.hlsearch == 1 then
    vim.cmd("nohlsearch")
  else
    vim.cmd("set hlsearch")
  end
end)
