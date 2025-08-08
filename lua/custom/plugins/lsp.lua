return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
      {
        "mason-org/mason.nvim",
        opts = {}
      },
      {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
          { "mason-org/mason.nvim", opts = {} },
          "neovim/nvim-lspconfig",
        },
      },
      'mfussenegger/nvim-jdtls',
      { 'j-hui/fidget.nvim', opts = {} },
      'b0o/SchemaStore.nvim',
    },
    config = function()
      local mason = require("mason")
      local lspconfig = require("lspconfig")
      local lazydev = require("lazydev")

      lazydev.setup {}
      local capabilities = nil
      if pcall(require, 'cmp_nvim_lsp') then
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      end

      local servers = require('custom.servers')

      local servers_to_install = vim.tbl_filter(function(key)
        local t = servers[key]
        if type(t) == 'table' then
          return not t.manual_install
        else
          return t
        end
      end, vim.tbl_keys(servers))

      mason.setup()
      local ensure_installed = {
        'stylua',
      }

      vim.list_extend(ensure_installed, servers_to_install)

      for name, config in pairs(servers) do
        if config == true then
          config = {}
        end
        config = vim.tbl_deep_extend('force', vim.deepcopy({ capabilities = capabilities }), config)

        lspconfig[name].setup(config)
      end

      local disable_semantic_tokens = {
        lua = true,
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local bufnr = args.buf
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id), 'must have valid client')

          local bufopts = { noremap = true, silent = true, buffer = bufnr }
          vim.opt_local.omnifunc = 'v:lua.vim.lsp.omnifunc'
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
          vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bufopts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
          vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action,
            { noremap = true, silent = true, buffer = bufnr, desc = 'code [a]ctions' })
          vim.keymap.set('v', '<space>la', '<ESC><CMD>vim.lsp.buf.range_code_action()<CR>',
            { noremap = true, silent = true, buffer = bufnr, desc = 'code [a]ctions' })
          vim.keymap.set('n', '<space>lf', function() vim.lsp.buf.format { async = true } end,
            { noremap = true, silent = true, buffer = bufnr, desc = '[f]ormat' })
          vim.keymap.set('n', '<leader>lD', require('telescope.builtin').diagnostics,
            { buffer = bufnr, desc = '[d]iagnostics' })
          vim.keymap.set('n', '<space>ld', vim.diagnostic.open_float,
            { noremap = true, silent = true, buffer = bufnr, desc = 'line [d]iagnostics' })
          vim.keymap.set('n', '<space>lr', vim.lsp.buf.rename, { buffer = bufnr, desc = '[r]ename' })

          local filetype = vim.bo[bufnr].filetype
          if disable_semantic_tokens[filetype] then
            client.server_capabilities.semanticTokensProvider = nil
          end
        end,
      })
    end,
  },
}
