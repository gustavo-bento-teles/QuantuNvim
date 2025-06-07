return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function ()
    require("noice").setup({
      cmdline = {
        view = "cmdline_popup",
      },
      views = {
        cmdline_popup = {
          position = {
            row = 3,
            col = "50%",
          },
          size = {
            width = 60,
          },
          border = {
            style = "rounded",
          },
          win_options = {
            winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
    })
  end
}
