local config = require('nvim-tree')

config.setup {
  view = {
    width = 40
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
}
