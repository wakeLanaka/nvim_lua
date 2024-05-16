local actions = require "telescope.actions"
local telescope = require("telescope")

telescope.setup {
  defaults = {
    path_display = {truncate = 1},
    mappings = {
      i = {
        ["<Esc>"] = actions.close,
        ["<C-u>"] = false,
        ["<C-d>"] = false,
        ["<C-h>"] = "which_key",
      },
      file_ignore_patterns = {
        -- "node_modules/", -- does not work...
        -- "target/", -- does not work...
      },
    }
  },
  extensions = {
    -- aerial = {
    --   show_nesting = true
    -- },
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
    }
  }
}
-- pcall(require('telescope').load_extension, 'aerial')
pcall(require('telescope').load_extension, 'fzf')
