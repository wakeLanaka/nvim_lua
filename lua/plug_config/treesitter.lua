require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "c_sharp", "comment", "cpp", "java",
  "javascript", "json", "latex", "bibtex", "lua", "markdown", "python", "typescript",
  "haskell", "go", "scala"},
  highlight = {
    enable = true,
    disable = {"latex"},
    additional_vim_regex_highlighting = false -- Can be true to work with vimtex, but has a lot of bugs!
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
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["ac"] = "@conditional.outer",
        ["ic"] = "@conditional.inner",
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['am'] = '@function.outer',
        ['im'] = '@function.inner',
        ['a['] = '@class.outer',
        ['i['] = '@class.inner',
        ["iv"] = "@variable",
        ["av"] = "@variable",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']['] = '@class.outer',
        [']a'] = '@parameter.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']]'] = '@class.outer',
        [']A'] = '@parameter.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
        ['[a'] = '@parameter.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
        ['[A'] = '@parameter.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>la'] = {query = '@parameter.inner', desc = "swap next [a]rgument"},
        -- ['<leader>pa'] = '@parameter.outer',
      },
      swap_previous = {
        ['<leader>lA'] = {query = '@parameter.inner', desc = "swap previous [A]rgument"},
      --   ['<leader>Pa'] = '@parameter.outer',
      },
    },
    lsp_interop = {
      enable = true,
      border = 'none',
      peek_definition_code = {
        ["<leader>lm"] = {query = "@function.outer", desc = "[m]method information"},
        ["<leader>l["] = {query = "@class.outer", desc = "class information"},
      },
    }
  },
}
