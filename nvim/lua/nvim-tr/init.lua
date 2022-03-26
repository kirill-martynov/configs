local nvim_tree = require('nvim-tree')

nvim_tree.setup{
  view = {
    width = 40
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
}
