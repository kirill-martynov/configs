require('plugins')
require('treesitter')
require('lualine-status')
require('web-devicons')
require('tree')
require('mappings')

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

local o = vim.o
local bo = vim.bo
local wo = vim.wo

cmd 'colorscheme nord'

o.termguicolors = true
o.guicursor = ''

o.encoding = 'UTF-8'
o.backspace = 'indent,eol,start'

o.clipboard = 'unnamed'
o.scrolloff = 10
o.updatetime = 300
o.shortmess = o.shortmess .. 'c'

-- line number
wo.number = true
wo.numberwidth = 3
wo.signcolumn = 'yes'

-- indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

wo.wrap = true
wo.linebreak = true
wo.breakindent = true
bo.modifiable = true
bo.endofline = true
bo.autoindent = true

-- search
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- splits
o.splitbelow = true
o.splitright = true

