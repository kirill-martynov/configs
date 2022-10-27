--[[ local status, theme = pcall(require, "neosolarized") ]]
--[[ if (not status) then return end ]]
--[[]]
--[[ theme.setup({ ]]
--[[   comment_italics = true, ]]
--[[ }) ]]

--[[ require("onedark").setup({ ]]
--[[   style = "cool", ]]
--[[]]
--[[   highlights = { ]]
--[[     TelescopeSelection = { bg = "#2D3343" }, ]]
--[[   }, ]]
--[[ }) ]]
--[[ require("onedark").load() ]]

vim.g.catppuccin_flavour = "macchiato"
require("catppuccin").setup()
vim.api.nvim_command("colorscheme catppuccin")

local hl = vim.api.nvim_set_hl

-- [[ NEOSOLARIZED COLORS ]]
--[[ hl(0, 'VertSplit', { bg = "none", fg = "#074859" }); -- Change split color ]]
--[[ hl(0, 'EndOfBuffer', { bg = "none", fg = "#002B36" }) -- Hide '~' in  LineNR ]]
hl(0, "CursorLine", { bg = "none" }) -- Remove bg color for CursorLine
--[[ hl(0, 'CursorLineNR', { bg = "none", fg = "#b58900" }) --  Change fg color for number in LineNR ]]
--[[]]
--[[ hl(0, 'NvimTreeCursorLine', { bg="#073642" }); ]]
--[[ hl(0, 'NvimTreeIndentMarker', { fg="#3A5A63" }); ]]
--[[ hl(0, 'NvimTreeFolderName', { fg="#839496"}); ]]
--[[ hl(0, 'NvimTreeOpenedFolderName', { fg="#839496" }); ]]
--[[ hl(0, 'NvimTreeFolderIcon', { fg="#5F7A81" }); ]]
--[[ hl(0, 'NvimTreeFileIcon', { fg="#5F7A81" }); ]]

-- Make background transparent
-- hl(0, 'Normal', { bg = "none", ctermbg = "none" });
--
--[[ hl(0, 'CursorLine', { bg = "none" }); ]]
-- hl(0, 'CursorLineNR', { bg = "none" });
-- hl(0, 'LineNR', { bg = "none" });
-- hl(0, 'SignColumn', { bg = "none", ctermbg = "none" });
-- hl(0, 'MatchParen', { bg = "none" });

-- Telescope
-- hl(0, 'TelescopeSelection', { bg = "#586e75", fg = "#93a1a1" })
-- hl(0, 'TelescopeSelectionCaret', { bg = "#586e75", fg = "#93a1a1" })

-- Gitsigns
-- vim.highlight.create('GitSignsAdd', { guibg = "NONE", ctermbg = "NONE" }, false);
-- vim.highlight.create('GitSignsChange', { guibg = "NONE", ctermbg = "NONE" }, false);
-- vim.highlight.create('GitSignsDelete', { guibg = "NONE", ctermbg = "NONE" }, false);

-- NvimTree
--[[ hl(0, "NvimTreeIndentMarker", { fg = "#3D445D" }) ]]
--[[ hl(0, "NvimTreeFolderName", { fg = "#AEB9CE" }) ]]
--[[ hl(0, "NvimTreeOpenedFolderName", { fg = "#AEB9CE" }) ]]
--[[ hl(0, "NvimTreeCursorLine", { bg = "#3D445D" }) ]]
