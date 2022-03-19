local nvim_treesitter = require('nvim-treesitter.configs')

nvim_treesitter.setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false
  }
}
