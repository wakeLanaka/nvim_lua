local map = vim.api.nvim_set_keymap

map('n', '<leader>vl',"<cmd>VimuxRunLastCommand<cr>",{desc = "last"})
map('n', '<leader>vp',"<cmd>VimuxPromptCommand<cr>",{desc = "prompt"})
