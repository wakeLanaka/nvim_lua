return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
    },
    build = ":TSUpdate",
    -- lazy = false,
    config = function()
      require "custom.treesitter"
    end,
  },
}
