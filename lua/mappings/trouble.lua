local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map ('n', '<m-n>', '<cmd>lua require("trouble").next({skip_groups = true, jump = true})<cr>', opts)
map ('n', '<m-p>', '<cmd>lua require("trouble").previous({skip_groups = true, jump = true})<cr>', opts)

-- LSP
map('n', '<leader>lw',"<cmd>TroubleToggle<cr>",{desc = "workspace diagnostics"})
