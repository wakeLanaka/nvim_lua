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
          textobject = 'gc',
        }
      }
      require("mini.surround").setup {
        mappings = {
          add = 'ys',
          delete = 'ds',
          replace = 'cs',
          highlight = '<space>%',
          find = '',
          find_left = '',
          suffix_last = '',
          suffix_next = '',
          update_n_lines = '',
        }
      }
    end,
  }
}
