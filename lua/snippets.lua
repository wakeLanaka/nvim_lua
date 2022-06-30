local ls = require('luasnip')
-- require('luasnip.loaders.from_vscode').lazy_load({paths = '~/.config/Code/User/snippets'})

local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamic = ls.dynamic_node

ls.add_snippets(nil, {
  all = {
    snip({
      trig = "date",
      name = "Date",
      dscr = "Date in the form of dd/mm/yyyy"},
      { text(os.date('%d/%m/%Y')) })
  }
})
