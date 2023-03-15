require('general')

require('mappings/init')

require('themes/init')

require('plugins')

require('plug_config/init')

require('snippets/init')

require('plugin_dev')

if vim.fn.argc() == 0 or vim.fn.line2byte("$") ~= -1 and not vim.opt.insertmode then
  require('startup').set_ascii_bg()
end
