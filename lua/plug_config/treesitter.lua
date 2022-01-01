require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "c_sharp", "comment", "cpp", "css", "java",
  "javascript", "json", "latex", "lua", "markdown", "python", "typescript",
  "haskell"},
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
    indent = {
      enable = true
    },
  },
}
