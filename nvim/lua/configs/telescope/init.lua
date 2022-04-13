-- [[ Telescope ]]
local config = require('telescope')
local actions = require('telescope.actions')


local find_files_config = {
  hidden = true,
  previewer = false,

  sorting_strategy = 'ascending',
  results_title = '',
  prompt_title = '',

  path_display = { "truncate" },

  layout_config = {
    horizontal = { width = 80, height = 0.4, prompt_position = "top" },
  }
}

config.setup{
  defaults = {
    prompt_prefix = "$ ",
    file_ignore_patterns = { "node_modules", ".git/" },
    color_devicons = false,
  },

  pickers = {
    find_files = find_files_config,
  }
}

config.load_extension('fzf')
