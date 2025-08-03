return {
  {
    "lervag/vimtex",
    dependencies = {
      { "preservim/vimux" },
    },
    config = function()
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_quickfix_mode = 0
      vim.cmd [[set conceallevel=2]]
      vim.g.tex_conceal = 'abdmg'

      vim.g.vimtex_compiler_latexmk = {
        aux_dir = '../aux/',
        out_dir = '../out/',
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        hooks = {},
        options = {
          '-verbose',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
        },
      }
      vim.keymap.set('n', '<leader>vc', "<cmd>VimtexCompile<cr>", { desc = "[c]ompile tex" })
      vim.keymap.set('n', '<leader>ve', "<cmd>VimtexErrors<cr>", { desc = "tex [e]errors" })
      vim.keymap.set('n', '<leader>vt', "<cmd>VimtexTocToggle<cr>", { desc = "[t]oc tex" })
      vim.keymap.set('n', '<leader>vv', "<cmd>VimtexView<cr>", { desc = "[V]iew pdf" })
      vim.keymap.set('n', '<leader>vl', "<cmd>VimuxRunLastCommand<cr>", { desc = "[l]ast" })
      vim.keymap.set('n', '<leader>vp', "<cmd>VimuxPromptCommand<cr>", { desc = "[p]rompt" })
      vim.keymap.set('n', '<leader>vo', "<cmd>VimuxOpenRunner<cr>", { desc = "[o]pen tmux" })
    end,
  }
}
