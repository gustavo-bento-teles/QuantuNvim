local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  capabilities = vim.g.cmp_lsp_capabilities,
  on_attach = function(client, bufnr)
    -- Keymaps para o LSP
  end,
  flags = {
    debounce_text_changes = 150,
  },
})
