local wk = require("which-key")

require'which-key'.setup{
  plugins = {
    spelling = {
      enabled = true,
      suggestions = 20,
    },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
    }
  },
  triggers_blacklist = {
    i = {"j", "k"},
    v = {"j", "k"},
    n = {"d", "c"},
  },
  window = {
    border = "none"
  }
}

wk.register({f = {name = "find"}}, {prefix = "<leader>"})
wk.register({g = {name = "git"}}, {prefix = "<leader>"})
wk.register({l = {name = "lsp"}},{prefix = "<leader>"})
wk.register({s = {name = "spelling"}},{prefix = "<leader>"})
wk.register({v = {name = "vimux"}},{prefix = "<leader>"})

