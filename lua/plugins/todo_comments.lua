return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "BufReadPost",
  opts = {},
  config = function(_, opts)
    require("todo-comments").setup(opts)
  end,
}
