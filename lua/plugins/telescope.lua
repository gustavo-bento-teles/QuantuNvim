return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    cmd = "Telescope",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Buscar arquivos" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Buscar texto (grep)" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = {
            prompt_position = "top"
          },
          sorting_strategy = "ascending",
        }
      })
    end
  }
}
