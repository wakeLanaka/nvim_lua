return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
    },
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    config = function()
      require "custom.treesitter"
    end,
  },
}
