local map = vim.api.nvim_set_keymap

map('n', '<leader>gB',"<cmd>Gitsigns toggle_current_line_blame<cr>",{desc = "blame"})
