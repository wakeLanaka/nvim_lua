local wk = require("which-key")

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
  },
  triggers_blacklist = {
    i = {"j", "k"},
    v = {"j", "k"},
    n = {"d", "c"},
  },
  window = {
    border = "none"
  }
}

wk.register({
  f = {
    name = "find",
    c = {"<cmd>Telescope colorscheme<cr>","colorscheme"},
    m = {"<cmd>Telescope marks<cr>","marks"},
    o = {"<cmd>Telescope oldfiles<cr>", "old files"},
    t = {"<cmd>Telescope tags<cr>", "tags"},
    w = {"<cmd>Telescope grep_string<cr>", "word under cursor"},
  }
},{prefix = "<leader>"})

wk.register({
  g = {
    name = "git",
    b = {"<cmd> lua require('telescope.builtin').git_branches{}<cr>", "branches"},
    B = {"<cmd>Gitsigns toggle_current_line_blame<cr>", "blame"},
    c = {"<cmd> lua require('telescope.builtin').git_commits{}<cr>", "commits"},
    s = {"<cmd> lua require('telescope.builtin').git_stash{}<cr>", "stash"},
  }
},{prefix = "<leader>"})

wk.register({
  l = {
    name = "lsp",
    a = {"code actions"},
    A = {"add workspace folder"},
    d = {"line diagnostics"},
    D = {"delete workspace folder"},
    f = {"format file"},
    q = {"diagnostic loc"},
    R = {"<cmd>Telescope lsp_references<cr>","references"},
    r = {"rename"},
    s = {"signature help"},
    t = { "type definition"},
    w = {"<cmd>TroubleToggle<cr>", "workspace diagnostics"},
    l = {"list workspace folders"},
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
  a = {"<cmd>AerialToggle!<cr>", "aerial"}
},{prefix = "<leader>"})

wk.register({
  v = {
    name = "vimux",
    c = {"<cmd>VimtexCompile<cr>", "compile tex"},
    l = {"<cmd>VimuxRunLastCommand<cr>","last"},
    p = {"<cmd>VimuxPromptCommand<cr>","prompt"},
    t = {"<cmd>VimtexTocToggle<cr>", "toc tex"},
  }
},{prefix = "<leader>"})

wk.register({
  x = {"xmonad"}
},{prefix = "<leader>"})
