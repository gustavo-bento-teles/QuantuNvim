return {
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  opts = {
    mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
    hide_cursor = true,
    stop_eof = true,
    easing_function = "quadratic",
  },
  config = function(_, opts)
    require("neoscroll").setup(opts)
  end,
}
