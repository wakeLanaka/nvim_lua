local actions = require "telescope.actions"

require("telescope").setup {
  defaults = {
    mappings = {
      i = {
      ["<ESC>"] = actions.close,
      ["<C-u>"] = false,
      ["<C-d>"] = false,
      ["<C-h>"] = "which_key",
      }
    }
  },
  extensions = {
    fzf = {},
    wrap_results = true,
  },
}

pcall(require("telescope").load_extension, "fzf")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<C-p>", builtin.find_files)
vim.keymap.set("n", "<C-f>", builtin.live_grep)
vim.keymap.set("n", "<space>fh", builtin.help_tags)
vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<space>fw", builtin.grep_string)
vim.keymap.set("n", "<space>f.", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end)
vim.keymap.set("n", "<space>?", require("telescope.builtin").oldfiles, { desc = "Find recently opened files" })
vim.keymap.set('n', '<space><space>', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
