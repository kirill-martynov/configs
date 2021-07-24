local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
  ensure_installed = 'maintained',
  highlights = {
    enable = true
  }
}
