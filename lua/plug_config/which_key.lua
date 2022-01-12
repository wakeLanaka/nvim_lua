local wk = require'which-key'

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
    n = {"d", "c"},
  }
}

wk.register({
  i = {"init treesitter"},
},{prefix = "<leader>"})

wk.register({
  f = {
    name = "find",
    B = {"<cmd>Telescope marks<cr>","marks"},
    c = {"<cmd>Telescope colorscheme<cr>","colorscheme"},
    g = {"<cmd>Telescope live_grep<cr>", "grep"},
    o = {"<cmd>Telescope oldfiles<cr>", "old files"},
    t = {"<cmd>Telescope tags<cr>", "tags"},
    w = {"<cmd>Telescope grep_string<cr>", "word under cursor"},
  }
},{prefix = "<leader>"})

wk.register({
  n = {"<cmd>e ~/switchdrive/Private/Notes/notes.tex<cr>", "notes"}
},{prefix = "<leader>"})

-- wk.register({
--   g = {
--     name = "git",
--     a = {"<cmd>Git add .<cr>","add file"},
--     b = {"<cmd>Git blame<cr>", "blame"},
--     c = {"<cmd>Git commit<cr>", "commit"},
--     d = {"<cmd>Git diff<cr>", "diff"},
--     g = {"<cmd>Git<cr>", "summary"},
--     h = {"<cmd>Gitsigns preview_hunk<cr>", "diff"},
--   }
-- },{prefix = "<leader>"})

wk.register({
  l = {
    name = "lsp",
    a = {"<cmd>lua vim.lsp.buf.code_action()<cr>","code actions"},
    A = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add workspace folder"},
    d = {"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>","line diagnostics"},
    D = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>","delete workspace folder"},
    f = {"<cmd>lua vim.lsp.buf.formatting()<CR>","format file"},
    q = {"<cmd>lua vim.diagnostic.setloclist()<CR>","signature help"},
    R = {"<cmd>Telescope lsp_references<cr>","references"},
    r = {"<cmd>lua vim.lsp.buf.rename()<CR>","rename"},
    s = {"<cmd>lua vim.lsp.buf.signature_help()<cr>","signature help"},
    t = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition"},
    w = {"<cmd>TroubleToggle<cr>", "workspace diagnostics"},
    l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspace folders"},
  }
},{prefix = "<leader>"})

wk.register({
  s = {
    name = "spelling",
    s = {"<cmd>set spell!<cr>", "start"},
    d = {"<cmd>set spelllang=de<cr>", "deutsch"},
    e = {"<cmd>set spelllang=en<cr>", "english"}
  }
},{prefix = "<leader>"})

wk.register({
  t = {"<cmd>TagbarToggle<cr>", "tagbar"}
},{prefix = "<leader>"})

wk.register({
  v = {
    name = "vimux",
    c = {"<cmd>VimuxCloseRunner<cr>","close"},
    l = {"<cmd>VimuxRunLastCommand<cr>","last"},
    p = {"<cmd>VimuxPromptCommand<cr>","prompt"},
    t = {"<cmd>VimtexCompile<cr>", "tex"},
  }
},{prefix = "<leader>"})
