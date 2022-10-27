-- [[ Telescope ]]
local config = require("telescope")
local actions = require("telescope.actions")

local find_files_config = {
  hidden = true,
  previewer = false,

  sorting_strategy = "ascending",
  results_title = "",
  prompt_title = "",

  layout_config = {
    horizontal = { width = 90, height = 0.5, prompt_position = "top" },
  },
}

local extensions_config = {
  frecency = {
    default_workspace = "CWD",
    ignore_patterns = { "*.git/*", "*/tmp/*" },
  },
}

config.setup({
  defaults = {
    prompt_prefix = "$ ",
    selection_caret = "❯ ",
    color_devicons = true,
    path_display = { "truncate" },
    file_ignore_patterns = { "node_modules", ".git/" },

    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
  },

  pickers = {
    find_files = find_files_config,
  },

  extensions = extensions_config,
})

config.load_extension("fzf")
-- config.load_extension('frecency')

-- vim.cmd([[highlight! TelescopeSelection guibg=NONE]])

-- local hl = vim.api.nvim_set_hl
--
-- hl(0, "TelescopeSelection", { bg = "none" })
-- hl(0, "TelescopeSelectionCaret", { bg = "red" })
-- hl(0, "TelescopeMultiIcon", { bg = "red" })
-- hl(0, "TelescopeResultsFileIcon", { bg = "red" })
