vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_delete_buffers = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_files_number = 5


vim.cmd [[
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
]]
