local map = vim.api.nvim_set_keymap

map('n', '<leader>vc',"<cmd>VimtexCompile<cr>",{desc = "compile tex"})
map('n', '<leader>vt',"<cmd>VimtexTocToggle<cr>",{desc = "toc tex"})

-- Vimux
map('n', '<leader>vl',"<cmd>VimuxRunLastCommand<cr>",{desc = "last"})
map('n', '<leader>vp',"<cmd>VimuxPromptCommand<cr>",{desc = "prompt"})
map('n', '<leader>vo',"<cmd>VimuxOpenRunner<cr>",{desc = "open tmux"})
