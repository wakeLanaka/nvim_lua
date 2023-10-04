vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '!', ':!', { noremap = true })

vim.keymap.set('n', '<c-d>', '<c-d>zz', { noremap = true })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { noremap = true })

-- map jj to esc
vim.keymap.set('i', 'jj', '<esc>', { noremap = true })
vim.keymap.set('c', 'jj', '<esc>', { noremap = true })
vim.keymap.set('s', 'jj', '<esc>', { noremap = true })

vim.keymap.set('c', '<c-a>', '<home>', { noremap = true })

-- Fast split navigation with <ctrl> + hjkl
vim.keymap.set('n', '<c-h>', '<c-w>h', { noremap = true })
vim.keymap.set('n', '<c-j>', '<c-w>j', { noremap = true })
vim.keymap.set('n', '<c-k>', '<c-w>k', { noremap = true })
vim.keymap.set('n', '<c-l>', '<c-w>l', { noremap = true })
vim.keymap.set('n', '<c-c>', '<c-w>c', { noremap = true })

-- fast substitution repetition
vim.keymap.set('n', '&', ':&&<cr>', { noremap = true })
vim.keymap.set('x', '&', ':&&<cr>', { noremap = true })

-- allows to move through display lines
vim.keymap.set('n', '^', 'g^', { noremap = true })
vim.keymap.set('n', '0', 'g0', { noremap = true })
vim.keymap.set('n', '$', 'g$', { noremap = true })

vim.keymap.set('n', 'J', 'gJ', { noremap = true })

-- Y yank until the end of line
vim.keymap.set('n', 'Y', 'y$', { noremap = true })

-- Tab navigation
vim.keymap.set('n', '<m-1>', '1gt', { noremap = true })
vim.keymap.set('n', '<m-2>', '2gt', { noremap = true })
vim.keymap.set('n', '<m-3>', '3gt', { noremap = true })
vim.keymap.set('n', '<m-4>', '4gt', { noremap = true })
vim.keymap.set('n', '<m-5>', '5gt', { noremap = true })
vim.keymap.set('n', '<m-6>', '6gt', { noremap = true })
vim.keymap.set('n', '<m-7>', '7gt', { noremap = true })
vim.keymap.set('n', '<m-8>', '8gt', { noremap = true })
vim.keymap.set('n', '<m-9>', '9gt', { noremap = true })
vim.keymap.set('n', '<c-t>', ':tabnew<cr>', { noremap = true })

-- save file
vim.keymap.set('n', '<c-s>', ':w<cr>', { noremap = true })

-- shift mappings
vim.keymap.set('v', '<', '<gv', { noremap = true })
vim.keymap.set('v', '>', '>gv', { noremap = true })

-- FOLDS
vim.keymap.set('n', 'zO', 'zR', { noremap = true })
vim.keymap.set('n', 'zC', 'zM', { noremap = true })

-- INSERT
vim.keymap.set('i', '<c-k>', '<c-o>O', { noremap = true })
vim.keymap.set('i', '<c-e>', '<c-o>A', { noremap = true })
vim.keymap.set('i', '<c-a>', '<c-o>^', { noremap = true })

-- COMMAND MODE
vim.keymap.set('c', '<m-b>', '<s-left>', { noremap = true })
vim.keymap.set('c', '<m-w>', '<s-right>', { noremap = true })
vim.keymap.set('c', '<m-h>', '<left>', { noremap = true })
vim.keymap.set('c', '<m-l>', '<right>', { noremap = true })

-- UNBIND
-- vim.keymap.set('n', 'Q', '<nop>', { noremap = true })
vim.keymap.set('n', '<up>', '<nop>', { noremap = true })
vim.keymap.set('n', '<down>', '<nop>', { noremap = true })
vim.keymap.set('n', '<left>', '<nop>', { noremap = true })
vim.keymap.set('n', '<right>', '<nop>', { noremap = true })
vim.keymap.set('i', '<up>', '<nop>', { noremap = true })
vim.keymap.set('i', '<down>', '<nop>', { noremap = true })
vim.keymap.set('i', '<left>', '<nop>', { noremap = true })
vim.keymap.set('i', '<right>', '<nop>', { noremap = true })

-- QUICKFIX
vim.keymap.set('n', '<M-q>', "<cmd>copen<cr>", { noremap = true })
vim.keymap.set('n', '<M-j>', "<cmd>cn<cr>", { noremap = true })
vim.keymap.set('n', '<M-k>', "<cmd>cp<cr>", { noremap = true })

vim.keymap.set("i", "<C-l>", "<cmd>lua require('enclosing').close_enclosing()<cr>")

-- toggle search highlight
vim.keymap.set("n", "<M-h>", function()
  if vim.v.hlsearch == 1 then
    vim.cmd("nohlsearch")
  else
    vim.cmd("set hlsearch")
  end
end)

-- add relative jump to jumplist
vim.keymap.set("n", "j", function()
    print(vim.v.count)
    if vim.v.count > 1 then
        return "m'" .. vim.v.count .. "j"
    else
        return "gj"
    end
end, {expr = true, noremap = true})

vim.keymap.set("n", "k", function()
    print(vim.v.count)
    if vim.v.count > 1 then
        return "m'" .. vim.v.count .. "k"
    else
        return "gk"
    end
end, {expr = true, noremap = true})
