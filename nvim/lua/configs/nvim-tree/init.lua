local config = require('nvim-tree')

vim.g.nvim_tree_icons = {
  git = {
    unstaged = "[]",
    staged = "[ﰶ]",
    unmerged = "[]",
    renamed = "[➜]",
    untracked = "[]",
    deleted = "[﯀]",
    ignored = "[]",
  },
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
}

config.setup {
  view = {
    width = 35
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
}
