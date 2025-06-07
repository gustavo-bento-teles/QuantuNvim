local M = {}

function M.setup()
  require("lspconfig").cssls.setup{}
end

return M

