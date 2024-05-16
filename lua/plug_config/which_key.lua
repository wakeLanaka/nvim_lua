local wk = require("which-key")

require('which-key').setup{
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
    presets = {
      operators = true,
      motions = false,
      text_objects = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    }
  },
  riggers_blacklist = {
    i = {"j", "k"},
    v = {"j", "k"},
    n = {"d", "c"},
  },
  window = {
    border = "none"
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
-- wk.register({t = {name = "treesitter"}},{prefix = "<leader>"})
