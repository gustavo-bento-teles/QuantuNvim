return {
  "folke/trouble.nvim",
  cmd = { "TroubleToggle", "Trouble" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function(_, opts)
    require("trouble").setup(opts)
  end,
}
