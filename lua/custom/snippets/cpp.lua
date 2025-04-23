require("luasnip.session.snippet_collection").clear_snippets "cpp"

local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node

local function fn(
    args,     -- text from i(2) in this example i.e. { { "456" } }
    parent,   -- parent snippet or parent node
    user_args -- user_args from opts.user_args
)
  return args[1][1]
end

ls.add_snippets("cpp", {
  s({
      trig = "guard",
      name = "guard",
      dscr = "create guard"
    },
    {
      t({ "#ifndef " }), i(1), t({ "", "" }),
      t({ "#define " }), f(fn, { 1 }), t({ "", "" }),
      t("", ""),
      t({ "", "#endif" })
    })
})

ls.add_snippets("cpp", {
  s({
      trig = "unique",
      name = "std::unique_ptr",
      dscr = "std::unique_ptr"
    },
    {
      t({ "std::unique_ptr<" }), i(1), t({ ">" })
    })
})

ls.add_snippets("cpp", {
  s({
      trig = "make",
      name = "std::make_unique",
      dscr = "std::make_unique"
    },
    {
      t({ "std::make_unique<" }), i(1), t({ ">(" }), i(2), t({ ");" })
    })
})
