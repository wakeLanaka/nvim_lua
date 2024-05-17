local ls = require('luasnip')

local M = {}

M.add_snippets = ls.add_snippets
M.snip =ls.snippet
M.node = ls.snippet_node
M.text = ls.text_node
M.insert = ls.insert_node
M.func = ls.function_node
M.choice = ls.choice_node
M.dynamic = ls.dynamic_node

return M
