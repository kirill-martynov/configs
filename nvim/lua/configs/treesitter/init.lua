-- [[ Treesitter ]]
local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "javascript", "typescript", "tsx", "html", "css", "scss", "jsdoc", "json", "json5", "lua", "yaml", "vim", "markdown" },
  ignore_install = { "phpdoc" },

  highlight = { enable = true, additional_vim_regex_highlighting = false },
  indent = { enable = true },
  textobjects = { select = { enable = true, lookahead = true } },
  context_commentstring = { enable = true, enable_autocmd = false },
})
