local npairs = require("nvim-autopairs")

require('nvim-autopairs').setup{
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
  map_c_w = true, -- map <c-w> to delete an pair if possible
  check_ts = true,
}

npairs.setup({
    fast_wrap = {},
})
