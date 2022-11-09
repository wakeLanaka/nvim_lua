local luaSnip = require("snippets.definitions")

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "gpu",
      name = "short GPU",
      dscr = "Short GPU"
    },
    {
      luaSnip.text({"\\acrshort{gpu}"}), luaSnip.insert(0)
    })
  }
})
