local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_respect_buf_cwd = 1

    -- \ 'git': {
    -- \   'unstaged': "",
    -- \   'staged': "",
    -- \   'unmerged': "",
    -- \   'renamed': "",
    -- \   'untracked': "",
    -- \   'deleted': "",
    -- \   'ignored': ""
    -- \   },
vim.cmd [[
let g:nvim_tree_icons = {
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
]]

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
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
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {
        { key = {"<CR>", "o", "<2-LeftMouse>", "l"}, action = "edit" },
        { key = "h", action = "close_node" },
        { key = "y", action = "copy" },
        { key = "<C-e>", action = "" },
      }
    }
  }
}
