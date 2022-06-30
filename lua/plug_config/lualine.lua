require'lualine'.setup {
  options = {
    icons_enabled = true,
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'aerial',
      {
        'diagnostics',
        sources={'nvim_diagnostic'},
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
        always_visible = true
      }
    },
    lualine_y = {'filetype'},
    lualine_z = {},
  },
  tabline = {},
  extensions = {}
}
