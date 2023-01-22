--[[ Bufferline ]]
local config = require "bufferline"

config.setup {
  highlights = require("catppuccin.groups.integrations.bufferline").get(),

  options = {
    mode = "tabs",
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = false,
    themable = true,
    name_formatter = function(buf) return " " .. buf.name end,

    indicator = { style = "none" },
    separator_style = "thin",

    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

          return " " .. dir_name
        end,
        text_align = "left",
        highlight = "NvimTreeIndentMarker",
      },
    },
  },
}
