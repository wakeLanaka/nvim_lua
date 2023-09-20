local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return {desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
  end

  vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Edit"))
  vim.keymap.set("n", "l", api.node.open.edit, opts("Edit"))
  vim.keymap.set("n", "o", api.node.open.edit, opts("Edit"))
  vim.keymap.set("n", "<C-e>", api.tree.close, opts("Close"))
  vim.keymap.set("n", "h", api.tree.collapse_all, opts("Collapse"))
end

require'nvim-tree'.setup {
  on_attach = my_on_attach,
  respect_buf_cwd = true,
  disable_netrw       = false,
  hijack_netrw        = true,
  -- open_on_setup       = false,
  -- ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    hide_root_folder = false,
    side = 'left',
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = false,
        folder = true,
        file = true,
        folder_arrow = true,
      },
      glyphs = {
        folder= {
          arrow_open= "",
          arrow_closed= "",
          default= "",
          open= "",
          empty= "",
          empty_open= "",
          symlink= "",
          symlink_open= "",
        }
      }
    }
  }
}

-- Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<c-e>', '<cmd>NvimTreeToggle<cr>', opts)
