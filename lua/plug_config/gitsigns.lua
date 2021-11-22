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
  keymaps = {} -- remove keymappings
}

vim.cmd[[
autocmd VimEnter * highlight GitSignsAdd guifg=#2DDC0B
autocmd VimEnter * highlight GitSignsChange guifg=yellow
autocmd VimEnter * highlight GitSignsDelete guifg=red
]]
