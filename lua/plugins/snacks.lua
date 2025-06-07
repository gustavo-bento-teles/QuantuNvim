return {
  "folke/snacks.nvim",
  event = "VeryLazy",
  dependencies = {
    "folke/noice.nvim",
  },
  opts = {
    animate = {
      enabled = true,
      statusline = true,
      scroll = true,
      popup = true,
    },
    cursorword = { enabled = true },
    autosave = { enabled = true },
    todo_comments = { enabled = true},
  },
}
