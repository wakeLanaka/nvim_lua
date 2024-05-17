local lspkind = require "lspkind"
lspkind.init {}

local cmp = require "cmp"

cmp.setup {
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer" },
  },
  mapping = {
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    ["<TAB>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = "menu,menuone"
  }
}

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' },
    { name = 'path' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' },
    { name = 'buffer' }
  })
})

local ls = require "luasnip"
ls.config.set_config {
  history = false,
  updateevents = "TextChanged,TextChangedI",
}

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/custom/snippets/*.lua", true)) do
  loadfile(ft_path)()
end

vim.keymap.set({ "i", "s" }, "<M-j>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<M-k>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
