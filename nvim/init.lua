-- IMPORTS
require('vars')
require('opts')
require('keys')
require('plugs')

-- PLUGINS
require('gitsigns').setup{
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '+', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  }
}

vim.cmd([[
  let g:gitblame_enabled = 0
  let g:gitblame_date_format = '%r'
]])

require('Comment').setup()
require('nvim-autopairs').setup{}

require('nvim-bufferline')
require('nvim-tr')
require('nvim-null-ls')
require('nvim-lualine')
require('nvim-telescope')
require('nvim-ts')
require('nvim-lsp')
require('nvim-completion')
require('nvim-autotag')
