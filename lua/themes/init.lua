local catppuccin = require("catppuccin")

catppuccin.setup({
  flavour = "mocha",
  background = {
    light = "latte",
    dark = "mocha",
  },
  transparent_background = false,
  term_colors = true,
  integrations = {
    which_key = true,
    lsp_trouble = true,
    symbols_outline = true,
    telescope = true,
    gitsigns = true,
    cmp = true,
    treesitter = true,
    fidget = true,
    nvimtree = {
      show_root = false,
    },
    mason = true,
  },
  dim_inactive = {
    enabled = false,
    shade = "dark",
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
  custom_highlights = function(colors)
    return {
      LineNr = {fg = colors.overlay0}
    }
  end,
  native_lsp = {
      enabled = true,
      virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
      },
      underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
      },
  },
})

vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin"

-- vim.api.nvim_set_hl(0, 'NormalFloat', {bg="#1E1E2E"}) -- mocha
-- vim.api.nvim_set_hl(0, 'NormalFloat', {bg="#24273A"}) -- machiattio
-- vim.api.nvim_set_hl(0, 'NormalFloat', {bg="#303446"}) -- frappe
-- vim.api.nvim_set_hl(0, 'Whitespace', {fg="#BCB9E6"}) -- Color for trailing whitespaces
