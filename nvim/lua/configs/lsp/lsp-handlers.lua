local M = {}

M.setup = function()
  local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  local config = {
    signs = false,
    virtual_text = {
      prefix = '● ',
    },
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
end

local function keymaps(bufnr)
  local map = vim.api.nvim_buf_set_keymap
  local opts = { noremap = true, silent = true }

  -- [[ LSP Mapping ]]
  map(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  map(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

  -- [[ LSP Saga Mapping ]]
  map(bufnr, 'n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
  map(bufnr, 'n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
  map(bufnr, 'n', 'gx', '<cmd>Lspsaga code_action<CR>', opts)
  map(bufnr, 'n', 'gx', '<cmd>Lspsaga range_code_action<CR>', opts)
  map(bufnr, 'n', 'go', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
  map(bufnr, 'n', 'gj', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
  map(bufnr, 'n', 'gk', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)

  map(bufnr, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
  map(bufnr, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})

  -- [[ Commands ]]
    vim.cmd[[ command! Format execute 'lua vim.lsp.buf.formatting_sync()' ]]
end

M.on_attach = function(client, bufnr)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false

  --[[ Illuminate ]]
  require("illuminate").on_attach(client)

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  keymaps(bufnr)
end

M.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

return M
