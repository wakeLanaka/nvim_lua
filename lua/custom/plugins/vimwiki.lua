return {
  {
    "vimwiki/vimwiki",
    config = function()
      vim.g.vimwiki_list = {
        {
          path = '/home/reto/Sync/vimwiki',
          syntax = 'markdown',
          ext = 'md'
        }
      }
      vim.keymap.set('n', '<leader>ww', '<cmd>VimwikiIndex<cr>', { noremap = true, desc = "[w]iki" })
      vim.keymap.set('n', '<leader>wd', '<cmd>VimwikiDeleteFile<cr>', { noremap = true, desc = "[d]elete" })
    end,
  }
}
