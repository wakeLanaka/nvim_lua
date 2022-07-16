local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-e>', '<cmd>NvimTreeToggle<cr>', opts)
-- map('n', '<c-e>', '<cmd>Vexplore<cr>', opts)
