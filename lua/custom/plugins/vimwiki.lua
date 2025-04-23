return {
  {
    "vimwiki/vimwiki",
    event = "BufEnter *.md",
    keys = {"<leader>ww"},
    init = function()
      vim.g.vimwiki_folding = ""
      vim.g.vimwiki_list = {
        {
          path = '/home/reto/Sync/',
          syntax = 'markdown',
          ext = 'md'
        },
      }
      vim.g.viimwiki_ext2syntax = {
        [".md"] = "markdown",
        [".markdown"] = "markdown",
      }
    -- vim.keymap.set('n', '<leader>ww', '<cmd>VimwikiIndex<cr>', { noremap = true, desc = "[w]iki" })
    -- vim.keymap.set('n', '<leader>wd', '<cmd>VimwikiDeleteFile<cr>', { noremap = true, desc = "[d]elete" })
    end,
  }
}
