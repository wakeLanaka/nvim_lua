local map = vim.api.nvim_set_keymap

map('n', '<c-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<c-f>', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
    }
  }
}
