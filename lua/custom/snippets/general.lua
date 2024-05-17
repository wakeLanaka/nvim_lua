local ls = require "luasnip"
local s = ls.snippet

local t = ls.text_node

ls.add_snippets(nil, {
  all = {
    s({
      trig = "date",
      name = "Date",
      dscr = "Date in the form of dd/mm/yyyy"},
      { t(os.date('%d/%m/%Y')) })
  }
})
