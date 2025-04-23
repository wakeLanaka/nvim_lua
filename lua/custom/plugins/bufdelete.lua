return {
  {
    "famiu/bufdelete.nvim",
    config = function ()
      vim.keymap.set('n', '<space>q', '<CMD>Bdelete<CR>', { silent = true, desc = "[q]uit buffer" })
    end
  }
}
