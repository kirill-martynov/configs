local config = require("lualine")
local navic = require("nvim-navic")

local sections = {
  filetype = {
    "filetype",
    padding = { left = 1, right = 0 },
    colored = false,
    icon_only = true,
    color = { fg = "#6E738D", bg = "none" },
  },
  filename = {
    "filename",
    symbols = {
      modified = "●",
      readonly = "",
      unnamed = "",
    },
    color = { fg = "#6E738D", bg = "none" },
  },
}

local winbar = {
  active = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      sections.filetype,
      sections.filename,
      {
        navic.get_location,
        cond = navic.is_available,
        color = { fg = "#6E738D", bg = "none" },
      },
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  inactive = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      sections.filetype,
      sections.filename,
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

config.setup({
  options = {
    globalstatus = true,
    theme = "catppuccin",
    component_separators = "",
    section_separators = "",
    disabled_filetypes = { winbar = { "NvimTree" } },
  },
  winbar = winbar.active,
  inactive_winbar = winbar.inactive,
  sections = {
    lualine_a = {
      {
        "mode",
        separator = { right = "" },
        padding = { left = 1, right = 0 },
        -- fmt = function(str) return str:sub(1,1) end
      },
    },
    lualine_b = {},
    lualine_c = {
      { "filetype", padding = { left = 1, right = 0 }, colored = false, icon_only = true },
      {
        "filename",
        path = 1,
        symbols = {
          modified = " ●",
          readonly = "",
          unnamed = "",
        },
      },
      {
        "diagnostics",
        sources = { "nvim_lsp" },
        symbols = { error = "  ", warn = "  ", hint = "  ", info = "  " },
      },
    },
    lualine_x = {
      {
        "diff",
        colored = true,
        symbols = { added = "  ", modified = " ", removed = " " },
      },
      "branch",
    },
    lualine_y = {
      {
        "fileformat",
        symbols = {
          unix = "", -- e712
          dos = "", -- e70f
          mac = "", -- e711
        },
        padding = { left = 0, right = 1 },
        separator = { left = "" },
      },
    },
    lualine_z = {},
  },
  extensions = { "nvim-tree", "quickfix" },
})
