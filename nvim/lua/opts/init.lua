local cmd = vim.api.nvim_command

local options = {
  swapfile = false,
  clipboard = 'unnamed',
  completeopt = 'menu,menuone,noselect',
  encoding = "utf8",
  fileencoding = "utf8",
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
  numberwidth = 3,
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

cmd("colorscheme NeoSolarized")

vim.highlight.create('Normal', { guibg = "NONE", ctermbg = "NONE" }, false);
vim.highlight.create('LineNR', { guibg = "NONE", ctermbg = "NONE" }, false);
vim.highlight.create('CursorLine', { guibg = "NONE", ctermbg = "NONE" }, false);
vim.highlight.create('CursorLineNR', { guibg = "NONE", ctermbg = "NONE" }, false);
vim.highlight.create('VertSplit', { guibg = "NONE", guifg = "#4c566a" }, false);
