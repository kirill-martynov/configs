-- [[ vars ]]
local g = vim.g

g.mapleader = " "

g.t_co = 256
g.background = "dark"

local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
