-- local kind_icons = {
--   Text = "Txt", --"",
--   Method = "", --"",
--   Function = "",--"",
--   Constructor = "華",
--   Field = "Field",--"",
--   Variable = "Var",--"",
--   Class = "",--"ﴯ",
--   Interface = "Int",--"",
--   Module = "Module",--"Mo",
--   Property = "Prop",--"ﰠ",
--   Unit = "Unit",--"",
--   Value = "Val",--"",
--   Enum = "Enum",--"",
--   Keyword = "",
--   Snippet = "Snip",
--   Color = "",
--   File = " ",
--   Reference = "Ref",--" ",
--   Folder = "",
--   EnumMember = "EnumMem",--"",
--   Constant = "Const",--"",
--   Struct = "Struct",--"",
--   Event = "Event",--"",
--   Operator = "Op",--"",
--   TypeParameter = "Type",--""
-- }
local kind_icons = {
  Text = '  ',
  Method = '  ',
  Function = '  ',
  Constructor = '  ',
  Field = '  ',
  Variable = '  ',
  Class = '  ',
  Interface = '  ',
  Module = '  ',
  Property = '  ',
  Unit = '  ',
  Value = '  ',
  Enum = '  ',
  Keyword = '  ',
  Snippet = '  ',
  Color = '  ',
  File = '  ',
  Reference = '  ',
  Folder = '  ',
  EnumMember = '  ',
  Constant = '  ',
  Struct = '  ',
  Event = '  ',
  Operator = '  ',
  TypeParameter = '  ',
}

-- Setup nvim-cmp.
local cmp = require('cmp')
local luasnip = require('luasnip')

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local handlers = require('nvim-autopairs.completion.handlers')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({
  filetypes = {
    ["*"] = {
      ["("] = {
        kind = {
          cmp.lsp.CompletionItemKind.Function,
          cmp.lsp.CompletionItemKind.Method,
        },
        handler = handlers["*"]
      }
    },
     tex = {
      ["{"] = {
        kind = {
          cmp.lsp.CompletionItemKind.Function,
          cmp.lsp.CompletionItemKind.Method,
        },
        handler = handlers["*"]
      }
    }
  }
}))

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-x><C-s>'] = cmp.mapping.complete({config = {sources = {{name = 'luasnip'}}}}),
    ['<C-p>'] = cmp.mapping(function()
      cmp.select_prev_item({behavior = cmp.SelectBehavior.Select })
    end, {'i', 's', 'c'}),
    ['<C-n>'] = cmp.mapping(function()
      cmp.select_next_item({behavior = cmp.SelectBehavior.Select })
    end, {'i', 's', 'c'}),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<C-c>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm { behavior = cmp.ConfirmBehavior.Insert, select = false, }
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, {'i', 's', 'c'}),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i','s'}),
  },
  sources = {
    { name = 'luasnip' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'nvim_lua'},
    -- { name = 'buffer'},
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      vim_item.menu = ({
        nvim_lsp = " ",
        nvim_lua = " ",
        treesitter = " ",
        path = " ",
        buffer = " ",
        bash = " ",
        luasnip = " ",
      })[entry.source.name]
      return vim_item
    end,
  },
 completion = {
    completeopt = 'menuone'
  }
}

cmp.setup.cmdline('/', {
  -- mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' },
    { name = 'buffer' }
  })
})

cmp.setup.filetype({ 'vim' }, {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' },
    { name = 'buffer' }
  })
})
