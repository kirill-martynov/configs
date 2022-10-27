local config = require("null-ls")

local formatting = config.builtins.formatting
local diagnostics = config.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

config.setup({
  debug = false,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use
          vim.lsp.buf.format({ bufnr = bufnr })

          -- on 0.7, you should use
          --[[ vim.lsp.buf.formatting_sync() ]]
        end,
      })
    end
  end,
  sources = {
    formatting.prettierd,
    formatting.stylelint,
    formatting.stylua,
  },
})
