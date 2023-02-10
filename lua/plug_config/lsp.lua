require("mason").setup()

-- OWN LSP ICONS
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
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
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- -- Enable the following language servers
local servers = {--[[ "ltex",  ]] "texlab", "hls", "sumneko_lua", "yamlls", "pyright", "clangd"}

require("mason-lspconfig").setup{
  ensure_installed = servers,
}

for _, lsp in ipairs(servers) do
  require("lspconfig")[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

require('lspconfig').sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false
      },
      telemetry = { enable = false },
    },
  },
}
