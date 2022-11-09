local npairs = require("nvim-autopairs")

npairs.setup{
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
  map_c_w = true, -- map <c-w> to delete an pair if possible
  check_ts = true,
  fast_wrap = {}
}
