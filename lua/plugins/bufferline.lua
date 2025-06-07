return {
  "akinsho/bufferline.nvim",
  dependencies = "kyazdani42/nvim-web-devicons",
  config = function ()
    require("bufferline").setup{
      options = {
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant",
      },
    }
  end
}
