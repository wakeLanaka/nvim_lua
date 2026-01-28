local actions = require "telescope.actions"

local select_one_or_multi = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  if not vim.tbl_isempty(multi) then
    require('telescope.actions').close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        vim.cmd(string.format('%s %s', 'edit', j.path))
      end
    end
  else
    require('telescope.actions').select_default(prompt_bufnr)
  end
end

require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "**/*.class",
    },
    mappings = {
      i = {
        ["<ESC>"] = actions.close,
        ["<C-u>"] = false,
        ["<CR>"] = select_one_or_multi,
        ["<C-d>"] = require('telescope.actions').delete_buffer,
        ["<C-h>"] = "which_key",
      }
    }
  },
  extensions = {
    fzf = {},
    wrap_results = true,
    ["ui-select"] = {
      require "telescope.themes".get_dropdown {}
    },
  },
}

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")
pcall(require("telescope").load_extension, "hoogle")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<C-p>", builtin.find_files)
vim.keymap.set("n", "<C-f>", builtin.live_grep)
vim.keymap.set("n", "<space>fh", builtin.help_tags, { desc = "[h]elp tags" })
-- vim.keymap.set("n", "<space>/", current_buffer_fuzzy_find_descending)
vim.keymap.set("n", "<space>fw", builtin.grep_string, { desc = "[w]ord" })
vim.keymap.set("n", "<space>fu", builtin.lsp_references, { desc = "[u]sages" })
vim.keymap.set("n", "<space>f.", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "File in config" })
vim.keymap.set("n", "<space>f:", function()
  builtin.live_grep { cwd = vim.fn.stdpath "config" }
end, { desc = "Grep in config" })
vim.keymap.set("n", "<space>?", builtin.oldfiles, { desc = "Find recently opened files" })
vim.keymap.set('n', '<space><space>', builtin.buffers, { desc = "Find existing buffers" })
