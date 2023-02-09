vim.keymap.set('n', '<leader>gg',"<cmd>Git<cr>",{desc = "[g]it status"})
vim.keymap.set('n', '<leader>gB',"<cmd>Git blame<cr>",{desc = "[B]lame"})
vim.keymap.set('n', '<leader>gw',"<cmd>GBrowse<cr>",{desc = "Bro[w]se"})
vim.keymap.set('n', '<leader>gb',require('telescope.builtin').git_branches, {desc = "[b]ranches"})
vim.keymap.set('n', '<leader>gc',require('telescope.builtin').git_commits, {desc = "[c]ommits"})
vim.keymap.set('n', '<leader>gs',require('telescope.builtin').git_stash, {desc = "[s]tash"})
