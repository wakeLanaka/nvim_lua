local map = vim.api.nvim_set_keymap

map('n', '<leader>vc',"<cmd>VimtexCompile<cr>",{desc = "[c]ompile tex"})
map('n', '<leader>ve',"<cmd>VimtexErrors<cr>",{desc = "tex [e]errors"})
map('n', '<leader>vt',"<cmd>VimtexTocToggle<cr>",{desc = "[t]oc tex"})
map('n', '<leader>vv',"<cmd>VimtexView<cr>",{desc = "[V]iew pdf"})

map('n', '<leader>vl',"<cmd>VimuxRunLastCommand<cr>",{desc = "[l]ast"})
map('n', '<leader>vp',"<cmd>VimuxPromptCommand<cr>",{desc = "[p]rompt"})
map('n', '<leader>vo',"<cmd>VimuxOpenRunner<cr>",{desc = "[o]pen tmux"})
