require'which-key'.setup{
  plugins = {
    spelling = {
      enabled = true,
      suggestions = 20,
    },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
    }
  }, triggers_blacklist = {
    i = {"j", "k"},
    v = {"j", "k"},
  }
}
local wk = require'which-key'

wk.register({
  f = {
    name = "find",
    c = {"<cmd>Telescope colorscheme<cr>","colorscheme"},
    b = {"<cmd>Telescope buffers<cr>","buffers"},
    B = {"<cmd>Telescope marks<cr>","marks"},
    o = {"<cmd>Telescope oldfiles<cr>", "old files"},
    t = {"<cmd>Telescope tags<cr>", "tags"},
    w = {"<cmd>Telescope grep_string<cr>", "word under cursor"},
  }
},{prefix = "<leader>"})

wk.register({
  i = {"init treesitter"},
},{prefix = "<leader>"})

wk.register({
  g = {
    name = "git",
    a = {"<cmd>Git add .<cr>","add file"},
    b = {"<cmd>Git blame<cr>", "blame"},
    c = {"<cmd>Git commit<cr>", "commit"},
    d = {"<cmd>Git diff<cr>", "diff"},
    g = {"<cmd>Git<cr>", "summary"},
  }
},{prefix = "<leader>"})

wk.register({
  h = {"<cmd>Startify<cr>","startify"},
},{prefix = "<leader>"})

wk.register({
  l = {
    name = "lsp",
    a = {"code actions"},
    d = {"line diagnostics"},
    f = {"format file"},
    p = {
      name = "parameter",
      h = {"left"},
      l = {"right"},
    },
    r = {"rename"},
    R = {"<cmd>Telescope lsp_references<cr>","references"},
    s = {"signature help"},
    t = {"<cmd>Telescope lsp_type_definitions<cr>", "type definition"},
    w = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "workspace diagnostics"},
  }
},{prefix = "<leader>"})

wk.register({
  s = {
    name = "session",
    c = {"<cmd>SClose<cr>","close"},
    d = {"<cmd>SDelete!<cr>","delete"},
    l = {"<cmd>SLoad<cr>","load"},
    s = {"<cmd>SSave!<cr>","save"},
  }
},{prefix = "<leader>"})
