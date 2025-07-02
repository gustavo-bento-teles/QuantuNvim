return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Abrir a aba lateral do NvimTree" },
    },

    config = function()
      require("nvim-tree").setup({
        update_focused_file = {
          enable = true,
        },

        hijack_directories = {
          enable = false,
        },

        sync_root_with_cwd = true,
        update_cwd = true,
        respect_buf_cwd = true,
        
        filters = {
          dotfiles = false,
        },

        view = {
          side = "right",
	        width = 30,
	      },

	      renderer = {
          root_folder_label = false,
	        icons = {
	          show = {
	            git = true,
	            folder = true,
	            file = true,
	            folder_arrow = true,
	          },
	        },
	      },

        actions = {
          change_dir = {
            enable = false
          },
        },
      })
    end,
  }
}
