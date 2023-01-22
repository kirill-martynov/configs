local config = require "lualine"
local navic = require "nvim-navic"

local assets = {
  left_separator = "",
  right_separator = "",
  mode_icon = "",
  dir = "",
  file = "",
  lsp = {
    server = "",
    error = "",
    warning = "",
    info = "",
    hint = "",
  },
  git = {
    branch = "",
    added = "",
    changed = "",
    removed = "",
  },
}

local function dir()
  local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

  return assets.dir .. " " .. dir_name
end

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
    fmt = function(filename) return assets.file .. " " .. filename end,
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
      sections.filename,
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

config.setup {
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
      {
        "progress",
        color = { bg = "#313244" },
      },
      {
        "location",
        separator = { right = "" },
        color = { bg = "#313244" },
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
        symbols = { added = "  ", modified = " ", removed = " " },
        --[[ color = { bg = "#313244" }, ]]
        separator = { left = "" },
        colored = true,
      },
      {
        "branch",
        separator = { left = "" },
        color = { fg = "#1E2030", bg = "#F9E2AF" },
      },
    },
    lualine_y = {},
    lualine_z = {
      {
        "filename",
        path = 0,
        fmt = function(filename) return assets.file .. " " .. filename end,
        color = { bg = "#EE99A0" },
        separator = { left = "" },
      },
      {
        dir,
        color = { bg = "#F0C6C6" },
        separator = { left = "" },
      },
    },
  },
  extensions = { "nvim-tree", "quickfix" },
}
