return {
  "simrat39/symbols-outline.nvim",
  config = function ()
    require("symbols-outline").setup({
      position = "left",
      width = 25,
      auto_open = false,
      show_numbers = true,
      show_relative_numbers = false,
      show_symbol_details = true,
    })
    vim.keymap.set("n", "<leader>o", ":SymbolsOutline<CR>", { noremap = true, silent = true, desc = "Abrir a aba lateral do SymbolsOutline" })
  end
}
