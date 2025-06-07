local plugins = {}

local function load_plugins(path, prefix)
  local files = vim.fn.glob(vim.fn.stdpath("config") .. "/lua/" .. path .. "/*.lua", false, true)
  for _, file in ipairs(files) do
    local module = prefix .. "." .. file:match("([^/]+)%.lua$")
    local ok, plugin = pcall(require, module)
    if ok and plugin then
      vim.list_extend(plugins, plugin)
    end
  end
end

load_plugins("plugins", "plugins")
load_plugins("plugins/lsp", "plugins.lsp")

return plugins
