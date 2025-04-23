return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neodev.nvim",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      'mfussenegger/nvim-jdtls',
      { "j-hui/fidget.nvim", opts = {} },
      -- Autoformatting
      -- "stevearc/conform.nvim",
      -- Schema information
      "b0o/SchemaStore.nvim",
    },
    config = function()
      require("neodev").setup {}

      local capabilities = nil
      if pcall(require, "cmp_nvim_lsp") then
        capabilities = require("cmp_nvim_lsp").default_capabilities()
      end

      local lspconfig = require "lspconfig"

      local servers = {
        texlab = true,
        lua_ls = true,
        hls = true,
        pyright = true,
        clangd = true,
        cmake = true,
        -- jdtls = {
        --   filetypes = { "java" },
        --   workspace = { checkThirdParty = false },
        -- },
        jsonls = {
          settings = {
            json = {
              schemas = require("schemastore").json.schemas(),
              validate = { enable = true },
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              schemaStore = {
                enable = false,
                url = "",
              },
              schemas = require("schemastore").yaml.schemas(),
            },
          },
        },
      }

      local servers_to_install = vim.tbl_filter(function(key)
        local t = servers[key]
        if type(t) == "table" then
          return not t.manual_install
        else
          return t
        end
      end, vim.tbl_keys(servers))

      require("mason").setup()
      local ensure_installed = {
        "stylua",
      }

      vim.list_extend(ensure_installed, servers_to_install)
      require("mason-tool-installer").setup { ensure_installed = ensure_installed }

      for name, config in pairs(servers) do
        if config == true then
          config = {}
        end
        config = vim.tbl_deep_extend("force", {}, {
          capabilities = capabilities,
        }, config)

        lspconfig[name].setup(config)
      end

      local disable_semantic_tokens = {
        lua = true,
      }

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id), "must have valid client")

          local bufopts = {noremap = true, silent = true, buffer = bufnr}
          vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", 'gi', vim.lsp.buf.implementation, bufopts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
          vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, bufopts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
          vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action, { noremap = true, silent = true, buffer = bufnr, desc = "code [a]ctions"})
          vim.keymap.set('v', "<space>la", "<ESC><CMD> vim.lsp.buf.range_code_action()<CR>", {noremap = true, silent = true, buffer = bufnr, desc = "code [a]ctions"})
          vim.keymap.set('n', '<space>lf', function() vim.lsp.buf.format { async = true } end, {noremap = true, silent = true, buffer = bufnr, desc = "[f]ormat"})
          vim.keymap.set('n', '<leader>lD', require('telescope.builtin').diagnostics, { buffer = bufnr, desc = '[d]iagnostics'})
          vim.keymap.set('n', '<space>ld', vim.diagnostic.open_float, { noremap = true, silent = true, buffer = bufnr, desc = "line [d]iagnostics" })
          vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, buffer = bufnr })
          vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, buffer = bufnr })
          vim.keymap.set("n", "<space>lr", vim.lsp.buf.rename, { buffer = bufnr, desc = "[r]ename" })
          vim.keymap.set("n", "<space>lt", "<CMD>Trouble diagnostics toggle win.position=left<CR>", { buffer = bufnr, desc = "[t]rouble" })
          vim.keymap.set("n", "<space>ls", "<CMD>Trouble symbols toggle focus=false<CR>", { buffer = bufnr, desc = "[S]ymbols" })

          local filetype = vim.bo[bufnr].filetype
          if disable_semantic_tokens[filetype] then
            client.server_capabilities.semanticTokensProvider = nil
          end
        end,
      })

      -- -- Autoformatting Setup
      -- require("conform").setup {
      --   formatters_by_ft = {
      --     lua = { "stylua" },
      --   },
      -- }

      -- vim.api.nvim_create_autocmd("BufWritePre", {
      --   callback = function(args)
      --     require("conform").format {
      --       bufnr = args.buf,
      --       lsp_fallback = true,
      --       quiet = true,
      --     }
      --   end,
      -- })
    end,
  },
}
