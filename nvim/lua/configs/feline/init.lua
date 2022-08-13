require('feline').setup()

require('feline').winbar.setup{
  highlight_reset_triggers = {},
  disable = {
    filetypes = {
      "^NvimTree$",
      "^packer$",
      "^startify$",
      "^fugitive$",
      "^fugitiveblame$",
      "^qf$",
      "^help$",
    },
    buftypes = {
      "^terminal$",
    },
    bufnames = {},
  },
}
