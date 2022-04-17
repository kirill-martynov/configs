-- [[ Telescope ]]
local config = require('telescope')
local actions = require('telescope.actions')


local find_files_config = {
  hidden = true,
  previewer = false,

  sorting_strategy = 'ascending',
  results_title = '',
  prompt_title = '',


  layout_config = {
    horizontal = { width = 90, height = 0.5, prompt_position = "top" },
  }
}

local extensions_config = {
  frecency = {
    default_workspace = 'CWD',
    ignore_patterns = {"*.git/*", "*/tmp/*"},
  }
}

config.setup{
  defaults = {
    prompt_prefix = "$ ",
    file_ignore_patterns = { 'node_modules', '.git/' },
    color_devicons = false,
    path_display = { 'absolute' },
  },

  pickers = {
    find_files = find_files_config,
  },

  extensions = extensions_config,
}

config.load_extension('fzf')
config.load_extension('frecency')
