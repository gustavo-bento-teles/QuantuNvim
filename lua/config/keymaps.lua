-- Normal

-- Salvar com Ctrl + s
vim.api.nvim_set_keymap('n', "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- Manusear os buffers usando a tecla leader
vim.api.nvim_set_keymap('n', "<Leader>bd", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<Leader>bp", ":bp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<Leader>bn", ":bn<CR>", { noremap = true, silent = true })
