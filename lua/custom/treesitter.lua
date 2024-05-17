require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "c_sharp", "comment", "cpp", "java",
    "javascript", "json", "latex", "bibtex", "lua", "markdown", "python", "typescript",
    "haskell", "go", "scala", "matlab"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    -- use_languagetree = false,
    disable = {"latex"},
  },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      node_decremental = '<c-backspace>',
    },
  },
}
