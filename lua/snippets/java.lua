local luaSnip = require("snippets.definitions")

luaSnip.add_snippets(nil, {
  java = {
    luaSnip.snip({
      trig = "doc",
      name = "doc",
      dscr = "create doc"
    },
    {
      luaSnip.text({"/**", ""}),
      luaSnip.text({" * "}), luaSnip.insert(0),
      luaSnip.text({""," */"})
    })
  }
})

luaSnip.add_snippets(nil, {
  java = {
    luaSnip.snip({
      trig = "test",
      name = "test",
      dscr = "Create test"
    },
    {
      luaSnip.text("@Test"), luaSnip.text({" "}),
      luaSnip.text("public"), luaSnip.text({" "}),
      luaSnip.text("void"), luaSnip.text({" "}), luaSnip.insert(1),
      luaSnip.text({"() {", ""}), luaSnip.text("\t"),
      luaSnip.insert(0),
      luaSnip.text({"", "}"})
    })
  }
})
