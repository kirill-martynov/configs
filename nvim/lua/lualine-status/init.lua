require'lualine'.setup {
  options = {
    icons_enabled = false,
    theme = 'nord',
    section_separators = {}
  },
  sections = {
    lualine_x = { 'filetype' }
  }
}
