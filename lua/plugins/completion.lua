return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "onsails/lspkind.nvim",
      "hrsh7th/vim-vsnip", -- snippet
      "rafamadriz/friendly-snippets", --snippet
      "windwp/nvim-autopairs", -- fecha parênteses
      "windwp/nvim-ts-autotag", -- fecha tags
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "jose-elias-alvarez/null-ls.nvim", -- formatters/linter integration
      "akinsho/toggleterm.nvim",
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      local npairs = require("nvim-autopairs") 
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      
      vim.g.cmp_lsp_capabilities = capabilities

      npairs.setup({})
      
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
          { name = "nvim_lua" },
          { name = "vsnip" },
        }),
        formatting = {
          format = lspkind.cmp_format({ with_text = true, maxwidth = 50 }),
        },
      })
    end,
  }
}
