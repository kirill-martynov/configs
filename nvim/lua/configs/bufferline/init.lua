--[[ Bufferline ]]
local config = require('bufferline')

config.setup {
  options = {
    mode = "tabs",
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = false,
    themable = true,

    indicator_icon = '',
    separator_style = {"|", "|"},

    offsets = {{
      filetype = "NvimTree",
      text = function() return
        '  File Explorer'
      end,
      text_align = "left",
      highlight = "NvimTreeIndentMarker",
    }},
  },
}
