vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '!', ':!', { noremap = true })

vim.keymap.set('n', '<c-d>', '<c-d>zz', { noremap = true })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { noremap = true })

-- map jj to esc
vim.keymap.set('i', 'jj', '<esc>', { noremap = true })
vim.keymap.set('c', 'jj', '<esc>', { noremap = true })
vim.keymap.set('s', 'jj', '<esc>', { noremap = true })

vim.keymap.set('c', '<c-a>', '<home>', { noremap = true })

-- Fast split navigation with <ctrl> + hjkl
vim.keymap.set('n', '<c-h>', '<c-w>h', { noremap = true })
vim.keymap.set('n', '<c-j>', '<c-w>j', { noremap = true })
vim.keymap.set('n', '<c-k>', '<c-w>k', { noremap = true })
vim.keymap.set('n', '<c-l>', '<c-w>l', { noremap = true })
vim.keymap.set('n', '<c-c>', '<c-w>c', { noremap = true })

-- fast substitution repetition
vim.keymap.set('n', '&', ':&&<cr>', { noremap = true })
vim.keymap.set('x', '&', ':&&<cr>', { noremap = true })

-- allows to move through display lines
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
vim.keymap.set('n', '<c-s>', '<CMD>w<CR>', { noremap = true })

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

-- UNBIND
-- vim.keymap.set('n', 'Q', '<nop>', { noremap = true })
vim.keymap.set('n', '<up>', '<nop>', { noremap = true })
vim.keymap.set('n', '<down>', '<nop>', { noremap = true })
vim.keymap.set('n', '<left>', '<nop>', { noremap = true })
vim.keymap.set('n', '<right>', '<nop>', { noremap = true })
vim.keymap.set('i', '<up>', '<nop>', { noremap = true })
vim.keymap.set('i', '<down>', '<nop>', { noremap = true })
vim.keymap.set('i', '<left>', '<nop>', { noremap = true })
vim.keymap.set('i', '<right>', '<nop>', { noremap = true })

-- QUICKFIX
vim.keymap.set('n', '<M-q>', "<cmd>copen<cr>", { noremap = true })
vim.keymap.set('n', '<M-j>', "<cmd>cn<cr>", { noremap = true })
vim.keymap.set('n', '<M-k>', "<cmd>cp<cr>", { noremap = true })

vim.keymap.set('n', '<space>cwd', ":lcd ", { noremap = true })


-- vim.keymap.set("i", "<C-l>", "<cmd>lua require('enclosing').close_enclosing()<cr>")

-- toggle search highlight
vim.keymap.set("n", "<M-h>", function()
  if vim.v.hlsearch == 1 then
    vim.cmd("nohlsearch")
  else
    vim.cmd("set hlsearch")
  end
end)

-- add relative jump to jumplist
vim.keymap.set({ "n", "v" }, "j", function()
  if vim.v.count > 1 then
    return "m'" .. vim.v.count .. "j"
  else
    return "gj"
  end
end, { expr = true, noremap = true })

vim.keymap.set({ "n", "v" }, "k", function()
  if vim.v.count > 1 then
    return "m'" .. vim.v.count .. "k"
  else
    return "gk"
  end
end, { expr = true, noremap = true })

vim.keymap.set('n', '<space>.', ':e $MYVIMRC<cr>', { noremap = true, desc = "[.]config" })
vim.keymap.set('n', '<space>hx', ':e $HOME/.config/xmonad/xmonad.hs<cr>', { noremap = true, desc = "[x]monad" })
vim.keymap.set('n', '<space>hn', ':e $HOME/Sync/Notes/Notes.md<cr>', { noremap = true, desc = "[n]otes" })
-- vim.keymap.set("n", "<space>a", "<cmd>AerialToggle!<cr>", { desc = "[a]erial" })
-- vim.keymap.set('n', '<space>q', ':bprevious|bd #<cr>', { silent = true, desc = "[q]uit buffer" })
vim.keymap.set('n', '<space>m', ':messages<cr>', { noremap = true, desc = "[m]essages" })
vim.keymap.set('n', '<space>n', ':enew<cr>', { noremap = true, desc = "[n]ew buffer" })

-- SPELLING
vim.keymap.set('n', '<space>ss', "<cmd>set spell!<cr>", { desc = "[s]tart" })
vim.keymap.set('n', '<space>sd', "<cmd>set spelllang=de<cr>", { desc = "[d]eutsch" })
vim.keymap.set('n', '<space>se', "<cmd>set spelllang=en<cr>", { desc = "[e]nglish" })

vim.keymap.set("n", "<space>x%", "<cmd>w<cr><cmd>source %<cr>", { noremap = true, desc = "execute current file" })
vim.keymap.set("n", "<space>xt", "<Plug>PlenaryTestFile", { noremap = true, desc = "[t]est file" })

vim.keymap.set("n", "<space>t", "<cmd>TSPlaygroundToggle<cr>", { noremap = true, desc = "[t]reesitter playground" })

vim.keymap.set("n", "<space>z", "<c-w>|<c-w>_", { noremap = true, desc = "[z]en" })

vim.keymap.set("n", "<a-o>", "<a-o><esc>", { noremap = true })
vim.keymap.set("n", "<a-s-o>", "<a-s-o><esc>", { noremap = true })
vim.keymap.set('i', '<c-t>', ' -> ', { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>rp", "<cmd>lua require('refactor').print_identifier()<cr>")
-- vim.keymap.set("n", "<leader>rd", "<cmd>lua require('refactor').delete_printers()<cr>")
-- vim.keymap.set("v", "<leader>rx", "<cmd>lua require('refactor').extract_method()<cr>")
-- vim.keymap.set("n", "<leader>rt", "<cmd>lua require('refactor').test()<cr>")

vim.keymap.set("n", "<space>cc", function()
  return ":e " .. vim.fn.expand('%:h') .. "/"
end, { expr = true, noremap = true, desc = "[c]reate file" })

vim.keymap.set("n", "<space>ct", function()
  local fileName = vim.fn.expand('%:t:r') .. "Test.java"
  local path = vim.fn.expand('%:h')
  path = path:gsub("main", "test")
  return ":vertical topleft split " .. path .. "/" .. fileName
end, { expr = true, noremap = true, desc = "create [t]est" })





-- vimcasts.org
vim.keymap.set("n", "<Bslash>l", "<cmd>set list!<cr>", { noremap = true })
