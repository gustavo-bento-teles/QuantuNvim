local lspconfig = require("lspconfig")

local M = {}

function M.setup()
  lspconfig.clangd.setup({
    capabilities = vim.g.cmp_lsp_capabilities,
    on_attach = function(client, bufnr)
    end,
    flags = {
      debounce_text_changes = 150,
    },
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  })
end

return M

