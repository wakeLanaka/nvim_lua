vim.keymap.set('n', '<c-f>', require("telescope.builtin").live_grep, { desc = "find" })
vim.keymap.set('n', '<c-p>', require("telescope.builtin").find_files, { desc = "fuzzy finder" })
vim.keymap.set('n', '<c-m>',require("telescope.builtin").marks, {desc = "[m]arks"})
vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', '<leader>fc',require("telescope.builtin").colorscheme, {desc = "[c]olorscheme"})
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[h]elp tags' })
vim.keymap.set('n', '<leader>ft',require("telescope.builtin").tags, { desc = "[t]ags"})
vim.keymap.set('n', '<leader>fw',require("telescope.builtin").grep_string, {desc = "[w]ord under cursor"})
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'search in buffer' })
