vim.keymap.set("x", "<leader>re", ":Refactor extract ")
vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

vim.keymap.set( "n", "<leader>rI", ":Refactor inline_func")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")
vim.keymap.set({"n", "x"}, "<leader>rr", function() require('refactoring').select_refactor() end)
vim.keymap.set( "n",  "<leader>rp", function() require('refactoring').debug.printf({below = true}) end)
vim.keymap.set({"x", "n"}, "<leader>rv", function() require('refactoring').debug.print_var() end)
vim.keymap.set("n", "<leader>rc", function() require('refactoring').debug.cleanup({}) end)
