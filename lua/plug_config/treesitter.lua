require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "c_sharp", "comment", "cpp", "css", "java",
  "javascript", "json", "latex", "bibtex", "lua", "markdown", "python", "typescript",
  "haskell", "go", "scala"},
  highlight = {
    enable = true,
    disable = {"latex"},
    additional_vim_regex_highlighting = false, -- Can be true to work with vimtex, but has a lot of bugs!
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      node_incremental = 'ni',
      node_decremental = 'nd',
    },
    indent = {
      enable = true
    },
  },
}
