-- Gitsigns
require('gitsigns').setup {
  signs = {
    add = { hl = 'GitSignsAdd', text = '+' },
    change = { hl = 'GitSignsChange', text = '~' },
    delete = { hl = 'GitSignsDelete', text = '_' },
    topdelete = { hl = 'GitSignsDelete', text = '‾' },
    changedelete = { hl = 'GitSignsChange', text = '~' },
  },
  signcolumn = true,
  numhl = false,
  linehl= false,
  current_line_blame = false,
  current_line_blame_formatter = '<author>, <author_time:%d/%m/%Y> - <summary>',
}

vim.cmd[[
autocmd VimEnter * highlight GitSignsAdd guifg=#2DDC0B
autocmd VimEnter * highlight GitSignsChange guifg=yellow
autocmd VimEnter * highlight GitSignsDelete guifg=red
]]
