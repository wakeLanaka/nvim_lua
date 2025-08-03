require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "c_sharp",
    "comment",
    "cpp",
    "java",
    "javascript",
    "json",
    -- "latex",
    "bibtex",
    "lua",
    "markdown",
    "python",
    "typescript",
    "haskell",
    "go",
    "scala",
    "matlab" },
  auto_install = true,
  ignore_install = {},
  modules = {},
  sync_install = false,
  highlight = { enable = true, },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      node_decremental = '<c-backspace>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["ia"] = "@parameter.inner",
        ["aa"] = "@parameter.outer"
      }
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },
  }
}
