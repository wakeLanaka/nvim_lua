require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<leader>i',
      node_incremental = 'ni',
      node_decremental = 'nd',
      -- scope_incremental = '<leader>si',
    },
  },
}
