local M = {}

function M.setup()
  local lspconfig = require("lspconfig")

  lspconfig.lua_ls.setup({
    capabilities = vim.g.cmp_lsp_capabilities,
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
          path = vim.split(package.path, package.config:sub(1,1)),
        },
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    },
  })
end

return M

