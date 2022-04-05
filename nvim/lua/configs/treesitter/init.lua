-- [[ Treesitter ]]
local config = require('nvim-treesitter.configs')

config.setup {
  ensure_installed = 'maintained',

  indent = {
    enable = true
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },

  textobjects = {
    select = {
      enable = true
    }
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
