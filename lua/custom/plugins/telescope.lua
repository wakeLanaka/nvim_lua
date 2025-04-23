return {
  {

    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "luc-tielen/telescope_hoogle" },

    },
    config = function()
      require "custom.telescope"
    end,
  },
}
