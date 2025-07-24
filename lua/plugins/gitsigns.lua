return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "~" },
      delete = { text = "-" },
    },
    current_line_blame = true,
  },
  config = function(_, opts)
    require("gitsigns").setup(opts)
  end,
}
