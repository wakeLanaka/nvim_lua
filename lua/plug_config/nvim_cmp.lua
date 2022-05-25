local kind_icons = {
  Text = "Txt", --"",
  Method = "Func", --"",
  Function = "Func",--"",
  Constructor = "華",
  Field = "Field",--"",
  Variable = "Var",--"",
  Class = "Class",--"ﴯ",
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
local cmp = require'cmp'
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-x><C-s>'] = cmp.mapping.complete({config = {sources = {{name = 'vsnip'}}}}),
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
    -- ['<CR>'] = cmp.mapping.confirm { 
    --   behavior = cmp.ConfirmBehavior.Replace,
    --   select = false,
    -- },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false, }
      elseif vim.fn["vsnip#available"](1) == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-expand-or-jump)", true, true, true), "")
      else
        fallback()
      end
    end, {'i', 's', 'c'}),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if vim.fn["vsnip#jumpable"](-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-jump-prev)", true, true, true), "")
      else
        fallback()
      end
    end, {'i','s'}),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'treesitter' },
    { name = 'path' },{
      name = 'buffer',
      option = {
        get_bufnrs = function() return { vim.api.nvim_get_current_buf() } end
      },
    },
    -- { name = 'spell' },
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
        nvim_lua = " ",
        treesitter = " ",
        path = " ",
        buffer = "﬘ ",
        bash = " ",
        vsnip = " ",
      })[entry.source.name]
      return vim_item
    end,
  },
 completion = {
    completeopt = 'menu,menuone,noinsert'
  }
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' },
      { name = 'buffer' }
    })
  })
