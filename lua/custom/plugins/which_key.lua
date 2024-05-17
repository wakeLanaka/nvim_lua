return {
  {
    "folke/which-key.nvim",
    config = function()
      local wk = require("which-key")

      require('which-key').setup {
        plugins = {
          presets = {
            motions = false,
          }
        }
      }

      wk.register({f = {name = "[f]ind"}}, {prefix = "<leader>"})
      wk.register({g = {name = "[g]it"}}, {prefix = "<leader>"})
      wk.register({l = {name = "[l]sp"}},{prefix = "<leader>"})
      wk.register({s = {name = "[s]pelling"}},{prefix = "<leader>"})
      wk.register({v = {name = "[v]imux"}},{prefix = "<leader>"})
      wk.register({x = {name = "e[x]ecute"}},{prefix = "<leader>"})
      wk.register({h = {name = "[h]ome"}},{prefix = "<leader>"})
      wk.register({r = {name = "[r]efactoring"}},{prefix = "<leader>"})
      wk.register({w = {name = "[w]iki"}},{prefix = "<leader>"})
      wk.register({c = {name = "[c]reate"}},{prefix = "<leader>"})
    end

  }
}
