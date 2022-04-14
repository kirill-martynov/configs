local config = require('lualine')

config.setup {
  options = {
    globalstatus = true,
    theme = 'solarized_dark',
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {
      'filename',
      {
        'diagnostics',
        sources = {"nvim_lsp"},
        symbols = { error = " ", warn = " ", hint = " ", info = "" },
      },
    },
    lualine_x = {
      {
        'diff',
        colored = true,
        symbols = { added = "  ", modified = " ", removed = " " },
      },
      'branch'
    },
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'nvim-tree' }
}
