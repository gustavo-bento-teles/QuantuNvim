require("core")

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "    ___                    _         _   _       _           ",
  "   / _ \\ _   _  __ _ _ __ | |_ _   _| \\ | |_   _(_)_ __ ___  ",
  "  | | | | | | |/ _` | '_ \\| __| | | |  \\| \\ \\ / / | '_ ` _ \\ ",
  "  | |_| | |_| | (_| | | | | |_| |_| | |\\  |\\ V /| | | | | | |",
  "   \\__\\_\\\\__,_|\\__,_|_| |_|\\__|\\__,_|_| \\_| \\_/ |_|_| |_| |_|",
  "                                                              "
}

local frames = {
  "                           Loading             ",
  "                           Loading.            ",
  "                           Loading..           ",
  "                           Loading...          ",
}

local index = 1
vim.fn.timer_start(500, function()
  dashboard.section.header.val[7] = "           "
  dashboard.section.header.val[8] = frames[index]
  index = index % #frames + 1
  alpha.redraw()
end, { ["repeat"] = -1 })

dashboard.section.buttons.val = {
  dashboard.button("e", "  | Novo arquivo", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  | Arquivos recentes", ":Telescope oldfiles<CR>"),
  dashboard.button("f", "🗂️ | Buscar arquivo", ":Telescope find_files<CR>"),
  dashboard.button("c", "⚙️ | Configurações", ":e $MYVIMRC<CR>"),
  dashboard.button("q", "❌ | Sair", ":qa<CR>"),
}

dashboard.section.footer.val = {
  "Distro desenvolvida por: Gustavo Bento"
}

local first_arg = vim.fn.argv(0)
if first_arg and vim.fn.isdirectory(first_arg) == 1 then
  vim.cmd("cd " .. first_arg)
end
