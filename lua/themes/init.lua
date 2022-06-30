local catppuccin = require("catppuccin")

catppuccin.setup({
  term_colors = true,
  integrations = {
    which_key = true
  }
})
vim.opt.termguicolors = true
-- vim.cmd[[colorscheme tokyonight]]

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
vim.highlight.create('NormalFloat', {guibg=0}, false)
