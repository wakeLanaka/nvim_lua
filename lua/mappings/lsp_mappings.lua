return function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'gr', function()
    require('telescope.builtin').lsp_references(require('telescope.themes').get_dropdown {})
  end, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  -- vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action,
  --   { noremap = true, silent = true, buffer = bufnr, desc = "code [a]ctions" })
  vim.keymap.set('n', '<leader>lD', require('telescope.builtin').diagnostics, { desc = '[d]iagnostics' })
  vim.keymap.set('n', '<leader>lS', require('telescope.builtin').lsp_document_symbols, { desc = 'document [S]ymbols' })
  vim.keymap.set('n', '<leader>lW', require('telescope.builtin').lsp_dynamic_workspace_symbols,
    { desc = '[W]orkspace symbols' })
  vim.keymap.set('n', '<space>lF', function() vim.lsp.buf.format({ async = true }) end,
    { noremap = true, silent = true, desc = "[f]ormat file" })
  vim.keymap.set('n', '<space>lr', vim.lsp.buf.rename,
    { noremap = true, silent = true, buffer = bufnr, desc = "[r]ename" })
  vim.keymap.set('n', '<space>ls', vim.lsp.buf.signature_help,
    { noremap = true, silent = true, buffer = bufnr, desc = "[s]ignature help" })
  vim.keymap.set('n', '<space>lt', vim.lsp.buf.type_definition,
    { noremap = true, silent = true, buffer = bufnr, desc = "[t]ype definition" })
  vim.keymap.set('n', '<space>ld', vim.diagnostic.open_float,
    { noremap = true, silent = true, buffer = bufnr, desc = "line [d]iagnostics" })
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, buffer = bufnr })
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, buffer = bufnr })
  vim.keymap.set('n', '<space>lq', vim.diagnostic.setloclist,
    { noremap = true, silent = true, buffer = bufnr, desc = "diagnostic [q]uickfix" })
  -- vim.keymap.set('n', '<space>lD', vim.lsp.buf.remove_workspace_folder,
  --   { noremap = true, silent = true, buffer = bufnr, desc = "[D]elete workspace folder" })
  -- vim.keymap.set('n', '<space>lL', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
  --   { noremap = true, silent = true, buffer = bufnr, desc = "[L]ist workspace folders" })
  -- vim.keymap.set('n', '<space>lA', vim.lsp.buf.add_workspace_folder,
  --   { noremap = true, silent = true, buffer = bufnr, desc = "[A]dd workspace folder" })
end
