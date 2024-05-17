return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("catppuccin").setup {
        flavour = "mocha",
        term_colors = true,
        integrations = {
          which_key = true,
          mason = true,
        },
        custom_highlights = function(colors)
          return {
            LineNr = {fg = colors.overlay0}
          }
        end,
      }
      vim.opt.termguicolors = true
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
