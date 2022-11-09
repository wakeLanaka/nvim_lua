local catppuccin = require("catppuccin")

catppuccin.setup({
  flavour = "frappe",
  transparent_background = false,
  term_colors = false,
  integrations = {
    which_key = true,
    lsp_trouble = true,
    symbols_outline = true,
    telescope = true,
    gitsigns = true,
    cmp = true,
    treesitter = true,
    nvimtree = {
      show_root = false,
    },
    mason = true,
  },
  dim_inactive = {
    enabled = false,
    shade = "window",
    percentage = 0.15,
  },
  compile = {
    enabled = true,
    path = vim.fn.stdpath "cache" .. "/catppuccin",
    suffix = "_compiled"
  },
  styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
  },
  color_overrides = {},
  custom_highlights = {},
  native_lsp = {
    enabled = true
  }
})

vim.opt.termguicolors = true
vim.api.nvim_command "colorscheme catppuccin"

vim.api.nvim_set_hl(0, 'NormalFloat', {bg="#303446"})
-- vim.api.nvim_set_hl(0, 'Whitespace', {fg="#BCB9E6"}) -- Color for trailing whitespaces
