return {
  {
    "folke/trouble.nvim",
    -- opt = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<CMD>Trouble diagnostics toggle<CR>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
    config = function()
      require "trouble".setup {}
    end
  },
}
