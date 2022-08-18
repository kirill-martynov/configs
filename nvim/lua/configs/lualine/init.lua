local config = require('lualine')

config.setup {
  options = {
    globalstatus = false,
    theme = 'solarized_dark',
    component_separators = '',
    section_separators = '',
  },
  sections = {
    lualine_a = {
      {
        'mode',
        separator = { right = ''},
        padding = { left = 1, right = 0 },
        -- fmt = function(str) return str:sub(1,1) end
      }
    },
    lualine_b = {},
    lualine_c = {
      { 'filetype', padding = { left = 1, right = 0 }, colored = false, icon_only = true },
      {
        'filename',
        path = 1,
        symbols = {
          modified = ' ●',
          readonly = '',
          unnamed = ''
        }

      },
      {
        'diagnostics',
        sources = { 'nvim_lsp' },
        symbols = { error = "  ", warn = "  ", hint = "  ", info = "  " },
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
    lualine_y = {
      {
        'fileformat',
        symbols = {
          unix = '', -- e712
          dos = '',  -- e70f
          mac = '',  -- e711
        },
        padding = { left = 0, right = 1 },
        separator = { left = ''},
      }
    },
    lualine_z = {}
  },
  extensions = { 'nvim-tree' }
}
