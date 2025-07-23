return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "lua",
      "python",
      "bash",
      "css",
      "html",
      "javascript",
      "typescript",
      "tsx",
      "c",
      "cpp",
      "asm"
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function (_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
