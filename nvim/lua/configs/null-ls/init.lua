local config = require('null-ls');

local formatting = config.builtins.formatting
local diagnostics = config.builtins.diagnostics

config.setup({
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
        vim.cmd([[
        augroup LspFormatting
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
        ]])
    end
  end,

  sources = {
    formatting.prettierd,
    formatting.stylelint,
  }
})
