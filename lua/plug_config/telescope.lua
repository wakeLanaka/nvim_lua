local map = vim.api.nvim_set_keymap

map('n', '<c-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<c-f>', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
