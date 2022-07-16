local map = vim.api.nvim_set_keymap

map('n', '<leader>vc',"<cmd>VimtexCompile<cr>",{desc = "compile tex"})
map('n', '<leader>vt',"<cmd>VimtexTocToggle<cr>",{desc = "toc tex"})
