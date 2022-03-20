-- IMPORTS
require('vars')
require('opts')
require('keys')
require('plugs')

-- PLUGINS
require('gitsigns').setup{
  signs = {
    delete = {},
    topdelete = {}
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
-- require('nvim-formatter')
require('nvim-null-ls')
require('nvim-null-ls')
require('nvim-lualine')
require('nvim-telescope')
require('nvim-ts')
require('nvim-lsp')
require('nvim-completion')
