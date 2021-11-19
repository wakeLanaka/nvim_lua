vim.o.completeopt="menuone,noselect,noinsert" --somehow noinsert is not working

local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "華",
  Field = "",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "Mo",
  Property = "ﰠ",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = " ",
  Color = "",
  File = " ",
  Reference = " ",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { 
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true, }
      elseif vim.fn["vsnip#available"]() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-expand-or-jump)", true, true, true), "")
      else
        fallback()
      end
    end, {'i', 's'}),
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
      opts = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
    { name = 'spell' },
  },
  documentation = {
    border = { "╭","─","╮","│","╯","─","╰","│" },
  },
  formatting = {
    kind_icons = kind_icons,
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
}
