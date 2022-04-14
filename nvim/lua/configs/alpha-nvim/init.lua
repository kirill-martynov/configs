local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.buttons.val = {
   dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
   dashboard.button( "<C-p>", "  Find files" , ":Telescope find_files<CR>"),
   dashboard.button("<leader>fg", "  Find word", ":Telescope live_grep<CR>"),
   dashboard.button("<leader><leader>", "  Frecency/MRU", ":Telescope frecency<CR>"),
   dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
}

alpha.setup(dashboard.config)
