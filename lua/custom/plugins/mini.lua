return {
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.ai").setup()
      require("mini.comment").setup {
        mappings = {
          comment = 'gc',
          comment_line = '<c-_>',
          comment_visual = '<c-_>',
          -- textobject = 'gl',
        }
      }
      require("mini.surround").setup {
        mappings = {
          add = 'ys',
          delete = 'ds',
          replace = 'cs',
          find = '',
          find_left = '',
          highlight = '<space>%',
          update_n_lines = '',
          suffix_last = 'l',
          suffix_next = 'n',
        }
      }
    end,
  }
}
