local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets(nil, {
  java = {
    s({
      trig = "doc",
      name = "doc",
      dscr = "create doc"
    },
    {
      t({"/**", ""}),
      t({" * "}), i(0),
      t({""," */"})
    })
  }
})

ls.add_snippets(nil, {
  java = {
    s({
      trig = "test",
      name = "test",
      dscr = "Create test"
    },
    {
      t("@Test"), t({" "}),
      t("public"), t({" "}),
      t("void"), t({" "}), i(1),
      t({"() {", ""}), t("\t"),
      i(0),
      t({"", "}"})
    })
  }
})
