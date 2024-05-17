local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets(nil, {
  markdown = {
    s({
      trig = "rightarrow",
      name = "rightarrow",
      dscr = "rightarrow creation"
    },
    {
      t({"&rarr; "}), i(0)
    })
  }
})
