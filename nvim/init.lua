-- IMPORTS
require('vars')
require('opts')
require('keys')
require('plugs')

-- PLUGINS
require('bufferline').setup{
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
  }
}
require('nvim-tree').setup{
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
}

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

local formatter = require("formatter")

local prettierConfig = function()
  return {
    exe = "prettier",
    args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
    stdin = true
  }
end

formatter.setup({
  filetype = {
    html = {prettierConfig},
    css = {prettierConfig},
    scss = {prettierConfig},
    javascript = {prettierConfig},
    javascriptreact = {prettierConfig},
    typescript = {prettierConfig},
    typescriptreact = {prettierConfig},
    json = {prettierConfig}
  }
})

vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx FormatWrite
  augroup END
]], true)

require('nvim-lualine')
require('nvim-telescope')
require('nvim-ts')
require('nvim-lsp')
require('nvim-completion')
