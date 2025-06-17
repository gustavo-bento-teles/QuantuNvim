-- Normal

-- Salvar com Ctrl + s
vim.api.nvim_set_keymap('n', "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- Salvar e sair
vim.api.nvim_set_keymap('n', "<C-x>", ":wq<CR>", { noremap = true, silent = true })

-- Manusear os buffers usando a tecla leader
vim.api.nvim_set_keymap('n', "<leader>bd", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<leader>bp", ":bp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "<leader>bn", ":bn<CR>", { noremap = true, silent = true })
