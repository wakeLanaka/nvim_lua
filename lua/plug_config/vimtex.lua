-- vim.g.vimtex_view_general_viewer = 'okular'
-- vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
vim.g.tex_flavor='latex'
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_quickfix_mode=0
vim.cmd [[
  set conceallevel=2
]]
vim.g.tex_conceal='abdmg'

vim.g.vimtex_compiler_latexmk = {
  aux_dir = '../aux/',
  out_dir = '../out/',
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
  hooks = {},
  options = {
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
  },
}
