-- [[ INSTALLATION ]]
require "plugins"

--[[ BASIC ]]
require "variables"
require "options"
require "utils"
require "mappings"

--[[ COLORS ]]
require "highlights"

-- [[ PLUGINS ]]
require "configs.alpha-nvim"
require "configs.bufferline"
require "configs.nvim-tree"
require "configs.telescope"
require "configs.spectre"
require "configs.treesitter"
require "configs.lsp"
require "configs.null-ls"
require "configs.cmp"
require "configs.autopairs"
require "configs.autotag"
require "configs.comment"
require "configs.gitsigns"
require "configs.illuminate"
require "configs.which-key"
require "configs.lualine"

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})
