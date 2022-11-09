local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-p>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<c-f>', '<cmd>lua require"telescope.builtin".live_grep(require("telescope.themes").get_dropdown({}))<cr>', opts)
map('n', '<c-b>', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fc',"<cmd>Telescope colorscheme<cr>",{desc = "colorscheme"})
map('n', '<leader>fm',"<cmd>Telescope marks<cr>",{desc = "marks"})
map('n', '<leader>fo',"<cmd>Telescope oldfiles<cr>",{desc = "old files"})
map('n', '<leader>ft',"<cmd>Telescope tags<cr>",{ desc = "tags"})
map('n', '<leader>fw',"<cmd>Telescope grep_string<cr>",{desc = "word under cursor"})

-- GIT
map('n', '<leader>gb',"<cmd> lua require('telescope.builtin').git_branches{}<cr>",{desc = "branches"})
map('n', '<leader>gc',"<cmd> lua require('telescope.builtin').git_commits{}<cr>",{desc = "commits"})
map('n', '<leader>gs',"<cmd> lua require('telescope.builtin').git_stash{}<cr>",{desc = "stash"})

-- LSP
map('n', '<leader>lR',"<cmd>Telescope lsp_references<cr>",{desc = "references"})
