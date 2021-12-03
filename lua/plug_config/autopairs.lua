require('nvim-autopairs').setup{
  disable_filetype = { "TelescopePrompt" },
  disable_in_macro = false,  -- disable when recording or executing a macro
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
  enable_moveright = true,
  enable_afterquote = true,  -- add bracket pairs after quote
  enable_check_bracket_line = true, -- check bracket in same line
  check_ts = false,
  map_bs = true,  -- map the <BS> key
  map_c_w = true, -- map <c-w> to delete an pair if possible
}
