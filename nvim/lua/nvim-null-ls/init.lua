local nvim_null_ls = require('null-ls');

local formatting = nvim_null_ls.builtins.formatting
local diagnostics = nvim_null_ls.builtins.diagnostics

nvim_null_ls.setup({
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
    formatting.prettier,

    formatting.stylelint,
  }
})
