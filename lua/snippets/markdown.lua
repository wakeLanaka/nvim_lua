local luaSnip = require("snippets.definitions")

luaSnip.add_snippets(nil, {
  markdown = {
    luaSnip.snip({
      trig = "rightarrow",
      name = "rightarrow",
      dscr = "rightarrow creation"
    },
    {
      luaSnip.text({"&rarr; "}), luaSnip.insert(0)
    })
  }
})
