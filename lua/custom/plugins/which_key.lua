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

      wk.add({
        { "<space>f",  group = "[f]ind" },
        { "<space>g",  group = "[g]it" },
        { "<space>l",  group = "[l]sp" },
        { "<space>s",  group = "[s]pelling" },
        { "<space>v",  group = "[v]imux" },
        { "<leader>x", group = "e[x]ecute" },
        { "<space>h",  group = "[h]ome" },
        { "<space>r",  group = "[r]efactoring" },
        { "<space>w",  group = "[w]iki" },
        { "<space>c",  group = "[c]reate" }
      })
    end

  }
}
