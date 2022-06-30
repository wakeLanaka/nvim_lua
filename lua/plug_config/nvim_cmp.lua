local kind_icons = {
  Text = "Txt", --"",
  Method = "", --"",
  Function = "",--"",
  Constructor = "華",
  Field = "Field",--"",
  Variable = "Var",--"",
  Class = "",--"ﴯ",
  Interface = "Int",--"",
  Module = "Module",--"Mo",
  Property = "Prop",--"ﰠ",
  Unit = "Unit",--"",
  Value = "Val",--"",
  Enum = "Enum",--"",
  Keyword = "",
  Snippet = "Snip",
  Color = "",
  File = " ",
  Reference = "Ref",--" ",
  Folder = "",
  EnumMember = "EnumMem",--"",
  Constant = "Const",--"",
  Struct = "Struct",--"",
  Event = "Event",--"",
  Operator = "Op",--"",
  TypeParameter = "Type",--""
}

-- Setup nvim-cmp.
local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local luasnip = require('luasnip')

cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

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
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'treesitter' },
    { name = 'path' },
    { name = 'nvim_lua'},
    { name = 'buffer'},
  },
  window = {
    documentation = {
      border = { "╭","─","╮","│","╯","─","╰","│" },
    },
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      vim_item.menu = ({
        nvim_lsp = " ",
        nvim_lua = " ",
        treesitter = " ",
        path = " ",
        buffer = "﬘ ",
        bash = " ",
        luasnip = " ",
      })[entry.source.name]
      return vim_item
    end,
  },
 completion = {
    completeopt = 'menu,menuone,noinsert'
  }
}

  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      {name = 'path'},
      { name = 'cmdline' },
      { name = 'buffer' }
    })
  })
