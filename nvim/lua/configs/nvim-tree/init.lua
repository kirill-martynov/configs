local config = require "nvim-tree"

config.setup {
  hijack_cursor = false,
  view = { side = "right", width = 50, hide_root_folder = true },
  update_focused_file = { enable = true, update_cwd = true, ignore_list = {} },
  renderer = {
    --[[ highlight_opened_files = "name", ]]
    highlight_modified = "all",
    highlight_git = true,
    indent_markers = { enable = true },
    icons = {
      webdev_colors = false,
      show = {
        folder_arrow = false,
      },
      git_placement = "after",
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
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
}
