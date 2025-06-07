local lspconfig = require("lspconfig")

local M = {}

function M.setup()
  lspconfig.tailwindcss.setup({
    capabilities = vim.g.cmp_lsp_capabilities,
    on_attach = function(client, bufnr)

    end,
    flags = {
      debounce_text_changes = 150,
    },
    settings = {
      tailwindCSS = {
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidScreen = "error",
          invalidVariant = "error",
          recommendedVariantOrder = "warning",
        },
      },
    },
  })
end

return M

