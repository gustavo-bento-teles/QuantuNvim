local M = {}

function M.setup()
  local lspconfig = require("lspconfig")
  lspconfig.html.setup{}
end

return M
