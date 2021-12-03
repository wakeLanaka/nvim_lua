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
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>lpl"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>lph"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        -- ['<leader>ljm'] = '@function.outer',
        -- ['<leader>ljc'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_previous_start = {
        -- ['<leader>ljM'] = '@function.outer',
        -- ['<leader>ljC'] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
  },
  refactor = {
    -- highlight_definitions = { enable = true },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = '<leader>lr',
      }
    },
  },
}
