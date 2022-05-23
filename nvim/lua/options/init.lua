local cmd = vim.api.nvim_command

local options = {
  swapfile = false,
  clipboard = 'unnamedplus',
  completeopt = 'menu,menuone,noselect',
  encoding = 'utf8',
  fileencoding = 'utf8',
  backspace = 'indent,eol,start',
  updatetime = 100,

  -- [[ Theme ]]
  syntax = "ON",
  termguicolors = true,
  guicursor = '',
  cursorline = true,

  -- [[ Editor ]]
  expandtab = true,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,
  smartindent = true,
  wrap = true,
  linebreak = true,
  breakindent = true,
  conceallevel = 0,

  -- [[ Context ]]
  number = true,
  numberwidth = 2,
  scrolloff = 10,
  signcolumn = "yes",

  -- [[ Search ]]
  ignorecase = true,
  smartcase = true,
  incsearch = true,

  -- [[ Splits ]]
  splitright = true,
  splitbelow = true
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

-- vim.cmd('colorscheme solarized-flat')
-- require('github-theme').setup({
--   theme_style = 'dark',
--   dark_sidebar = false,
-- })

require('onedark').setup {
    style = 'cool',

    highlights = {
      TelescopeSelection =  { bg = "#2D3343" },
    }
}
require('onedark').load()
