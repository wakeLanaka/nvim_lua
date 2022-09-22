local luaSnip = require("snippets.definitions")

luaSnip.add_snippets(nil, {
  all = {
    luaSnip.snip({
      trig = "date",
      name = "Date",
      dscr = "Date in the form of dd/mm/yyyy"},
      { luaSnip.text(os.date('%d/%m/%Y')) })
  }
})
