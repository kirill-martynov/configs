local nvim_telescope = require('telescope')

nvim_telescope.setup{
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" }
  },

  pickers = {
    find_files = {
      hidden = true,
      previewer = false,
      layout_config = {
        horizontal = { width = 0.3, height = 0.4, prompt_position = "top" },
      }
    },
  },

  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }

}

nvim_telescope.load_extension('fzf')
