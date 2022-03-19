-- [[ opts ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

vim.bo.swapfile = false
vim.o.backspace = 'indent,eol,start'
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.breakindent = true

-- [[ Filetypes ]]
opt.encoding = "utf8"
opt.fileencoding = "utf8"
opt.completeopt = 'menu,menuone,noselect'

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true
opt.guicursor = ''
opt.cursorline = true

cmd("colorscheme NeoSolarized")
cmd("hi Normal guibg=NONE ctermbg=NONE")
cmd("hi LineNR guibg=NONE ctermbg=NONE")
cmd("hi CursorLine guibg=NONE ctermbg=NONE")
cmd("hi CursorLineNR guibg=NONE ctermbg=NONE")

-- [[ Editor ]]
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.smartindent = true

-- [[ Context ]]
opt.number = true
opt.numberwidth = 3
opt.scrolloff = 10 
opt.signcolumn = "yes"

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- [[ Splits ]]
opt.splitright = true
opt.splitbelow = true

