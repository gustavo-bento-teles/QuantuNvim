return {
  "j-hui/fidget.nvim",
  tag = "legacy",
  config = function ()
    require("fidget").setup({
      window = {
        blend = 0, 
        relative = "editor", 
      },
      text = {
        spinner = "dots",
        done = "✔", 
      },
      align = {
        bottom = true,
        right = true,
      },
      timer = {
        fidget_decay = 2000,
        task_decay = 1000,
      },
    })
  end
}
