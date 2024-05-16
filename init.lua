require('mappings/mappings')
require('plugins')
require('general')
require('plug_config/init')
require('mappings/init')
require('themes/init')
require('snippets/init')
require('plugin_dev')

-- if vim.fn.argc() == 0 or vim.fn.line2byte("$") ~= -1 and not vim.opt.insertmode then
--   require('startup').set_ascii_bg()
-- end
