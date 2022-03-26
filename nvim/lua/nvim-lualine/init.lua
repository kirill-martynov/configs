local nvim_lualine = require('lualine')

nvim_lualine.setup{
  options = {
    theme = 'solarized_dark',
    section_separators = {'', ''},
    component_separators = {'', ''},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {
      'filename',
      {
        'diagnostics', 
        sources = {"nvim_lsp"}, 
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}
      },
    },
    lualine_x = {
      'diff',
      'branch'
    },
    lualine_y = {},
    lualine_z = {}
  },
}
