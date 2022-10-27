local config = require("nvim-tree")

config.setup({
  hijack_cursor = false,
  view = { width = 35, hide_root_folder = true },
  update_focused_file = { enable = true, update_cwd = true, ignore_list = {} },
  renderer = {
    indent_markers = { enable = true },
    icons = {
      webdev_colors = false,
      glyphs = {
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "",
          ignored = "◌",
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
      },
    },
  },
})
