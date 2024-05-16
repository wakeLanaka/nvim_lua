vim.keymap.set('n', '<leader>.', ':e $MYVIMRC<cr>', { noremap = true, desc = "[.]config" })
vim.keymap.set('n', '<leader>hx', ':e $HOME/.config/xmonad/xmonad.hs<cr>', { noremap = true, desc = "[x]monad" })
vim.keymap.set('n', '<leader>hn', ':e $HOME/Sync/Notes/Notes.md<cr>', {noremap = true, desc = "[n]otes"})
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<cr>", { desc = "[a]erial" })
vim.keymap.set('n', '<leader>q', ':bprevious|bd #<cr>', { silent = true, desc = "[q]uit buffer" })
vim.keymap.set('n', '<leader>m', ':messages<cr>', { noremap = true, desc = "[m]essages" })
vim.keymap.set('n', '<leader>n', ':enew<cr>', { noremap = true, desc = "[n]ew buffer" })

-- SPELLING
vim.keymap.set('n', '<leader>ss', "<cmd>set spell!<cr>", { desc = "[s]tart" })
vim.keymap.set('n', '<leader>sd', "<cmd>set spelllang=de<cr>", { desc = "[d]eutsch" })
vim.keymap.set('n', '<leader>se', "<cmd>set spelllang=en<cr>", { desc = "[e]nglish" })

vim.keymap.set("n", "<leader>x%", "<cmd>w<cr><cmd>source %<cr>", {noremap = true, desc = "execute current file"})
vim.keymap.set("n", "<leader>xt", "<Plug>PlenaryTestFile", {noremap = true, desc = "[t]est file"})

vim.keymap.set("n", "<leader>t", "<cmd>TSPlaygroundToggle<cr>", {noremap = true, desc = "[t]reesitter playground"})

vim.keymap.set("n", "<leader>z", "<c-w>|<c-w>_", {noremap = true, desc = "[z]en"})

-- vim.keymap.set("n", "<leader>rp", "<cmd>lua require('refactor').print_identifier()<cr>")
-- vim.keymap.set("n", "<leader>rd", "<cmd>lua require('refactor').delete_printers()<cr>")
-- vim.keymap.set("v", "<leader>rx", "<cmd>lua require('refactor').extract_method()<cr>")
-- vim.keymap.set("n", "<leader>rt", "<cmd>lua require('refactor').test()<cr>")

vim.keymap.set("n", "<leader>cc", function()
  return ":e " .. vim.fn.expand('%:h') .. "/"
end, { expr = true, noremap = true, desc = "[c]reate file"})

vim.keymap.set("n", "<leader>ct", function()
  local fileName = vim.fn.expand('%:t:r') .. "Test.java"
  local path = vim.fn.expand('%:h')
  path = path:gsub("main", "test")
  return ":vertical topleft split " .. path .. "/" .. fileName
end, {expr = true, noremap = true, desc = "create [t]est"})
