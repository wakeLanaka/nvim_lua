local luaSnip = require("snippets.definitions")
local ls = require("luasnip")
local f = ls.function_node

local function fn(
  args,     -- text from i(2) in this example i.e. { { "456" } }
  parent,   -- parent snippet or parent node
  user_args -- user_args from opts.user_args 
)
   return args[1][1]
end

luaSnip.add_snippets(nil, {
  cpp = {
    luaSnip.snip({
      trig = "guard",
      name = "guard",
      dscr = "create guard"
    },
    {
      luaSnip.text({"#ifndef "}), luaSnip.insert(1), luaSnip.text({"", ""}),
      luaSnip.text({"#define "}), f(fn, {1}), luaSnip.text({"" , ""}),
      luaSnip.text("",""),
      luaSnip.text({"", "#endif"})
    })
  }
})
