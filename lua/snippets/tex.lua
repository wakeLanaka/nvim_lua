local luaSnip = require("snippets.definitions")

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "itemize",
      name = "itemize",
      dscr = "itemize creation"
    },
    {
      luaSnip.text({"\\begin{itemize}", ""}),
      luaSnip.text({"\t\\item "}), luaSnip.insert(1),
      luaSnip.text({"", "\\end{itemize}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "item",
      name = "item",
      dscr = "item creation"
    },
    {
      luaSnip.text({"\\item"}), luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "rightarrow",
      name = "rightarrow",
      dscr = "rightarrow creation"
    },
    {
      luaSnip.text({"$\\rightarrow$ "}), luaSnip.insert(0)
    })
  }
})
