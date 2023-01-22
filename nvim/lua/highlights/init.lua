--[[ require("onedark").setup({ ]]
--[[   style = "cool", ]]
--[[]]
--[[   highlights = { ]]
--[[     TelescopeSelection = { bg = "#2D3343" }, ]]
--[[   }, ]]
--[[ }) ]]
--[[ require("onedark").load() ]]

local colors = {
  catppuccin = {
    NvimTreeFileIcon = {
      macchiato = { fg = "#585E6F" },
    },
    NvimTreeFolderIcon = {
      macchiato = { fg = "#585E6F" },
    },
    NvimTreeFolderName = {
      macchiato = { fg = "#BFC7E8" },
    },
    NvimTreeOpenedFolderName = {
      macchiato = { fg = "#BFC7E8" },
    },
    NvimTreeNormal = {
      macchiato = { fg = "#BFC7E8", bg = "#1E2030" },
    },
    NvimTreeOpenedFile = {
      macchiato = { fg = "#EED49F" },
    },
    NvimTreeCursorLine = {
      latte = { bg = "#DCE0E8" },
      macchiato = { bg = "#494D64" },
    },
    NvimTreeModified = {
      macchiato = { fg = "#EED49F" },
    },
    TelescopeSelectionCaret = {
      macchiato = { bg = "#303347" },
    },
  },
}

require("catppuccin").setup {
  flavour = "macchiato",
}

vim.api.nvim_command "colorscheme catppuccin"

local hl = vim.api.nvim_set_hl

hl(0, "CursorLine", { bg = "none" }) -- Remove bg color for CursorLine

--[[ hl(0, 'CursorLine', { bg = "none" }); ]]
--[[ hl(0, "CursorLineNR", { bg = "none" }) ]]
--[[ hl(0, 'LineNR', { bg = "none" }); ]]
--[[ hl(0, 'SignColumn', { bg = "none", ctermbg = "none" }); ]]
--[[ hl(0, 'MatchParen', { bg = "none" }); ]]

-- Telescope
-- hl(0, 'TelescopeSelection', { bg = "#586e75", fg = "#93a1a1" })
hl(0, "TelescopeSelectionCaret", colors["catppuccin"]["TelescopeSelectionCaret"]["macchiato"])

-- NvimTree
hl(0, "NvimTreeNormal", colors["catppuccin"]["NvimTreeNormal"]["macchiato"])
hl(0, "NvimTreeCursorLine", colors["catppuccin"]["NvimTreeCursorLine"]["macchiato"])

hl(0, "NvimTreeOpenedFolderName", colors["catppuccin"]["NvimTreeOpenedFolderName"]["macchiato"])
hl(0, "NvimTreeFolderName", colors["catppuccin"]["NvimTreeFolderName"]["macchiato"])
hl(0, "NvimTreeFolderIcon", colors["catppuccin"]["NvimTreeFolderIcon"]["macchiato"])

hl(0, "NvimTreeFileIcon", colors["catppuccin"]["NvimTreeFileIcon"]["macchiato"])
hl(0, "NvimTreeOpenedFile", colors["catppuccin"]["NvimTreeOpenedFile"]["macchiato"])
hl(0, "NvimTreeModified", colors["catppuccin"]["NvimTreeModified"]["macchiato"])
