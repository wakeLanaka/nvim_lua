vim.opt.termguicolors = true -- enable 24-bit RGB colors

vim.cmd[[colorscheme nord]]


-- STATUSBAR

vim.g.lightline = {
  colorscheme = 'nord',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'fugitive#head' },
}
