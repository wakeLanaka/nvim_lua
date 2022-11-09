require("mason").setup()
require("mason-lspconfig").setup()
local nvim_lsp = require('lspconfig')

-- OWN LSP ICONS
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local border = {
  {"╭", "FloatBorder"},
  {"─", "FloatBorder"},
  {"╮", "FloatBorder"},
  {"│", "FloatBorder"},
  {"╯", "FloatBorder"},
  {"─", "FloatBorder"},
  {"╰", "FloatBorder"},
  {"│", "FloatBorder"},
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- DIAGNOSTICS SETTINGS
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  {
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})


local on_attach = require('mappings/lsp_mappings')

-- -- LSP SERVER CONFIG
-- -- nvim-cmp supports additional completion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- -- Enable the following language servers
local servers = {--[[ "ltex",  ]] "texlab", "hls", "sumneko_lua", "yamlls", "pyright", "clangd"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  }
end

