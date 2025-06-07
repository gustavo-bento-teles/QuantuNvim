local lspconfig = require("lspconfig")

local M = {}

function M.setup()
  lspconfig.tsserver.setup({
    capabilities = vim.g.cmp_lsp_capabilities,
    on_attach = function(client, bufnr)

    end,
    flags = {
      debounce_text_changes = 150,
    },
  })
end

return M

