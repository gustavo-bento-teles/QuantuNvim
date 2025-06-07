return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    require("presence").setup({
      auto_update = true,
      main_image = "neovim",
      neovim_image_text = "Neovim",
      enable_line_number = true,
      buttons = true,
      show_time = true,
    })
  end
}
