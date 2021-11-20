vim.opt.termguicolors = true 

-- TOKYONIGHT CONFIG
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd[[colorscheme tokyonight]] --nord/nightfly

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {
      {
        'diagnostics', 
        sources={'nvim_lsp'},
        symbols = {error = ' ', warn = ' ', info = '', hint = ' '},
        always_visible = false
      }
    },
    lualine_z = {'location'},
  },
  tabline = {},
  extensions = {}
}
