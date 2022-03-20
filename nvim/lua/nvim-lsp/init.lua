local nvim_lsp = require('lspconfig')

local map = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

local on_attach = function(client, bufnr)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.cmd[[ command! Format execute 'lua vim.lsp.buf.formatting_sync()' ]]

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
end

local cmp_capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  capabilities = cmp_capabilities,

  flags = {
    debounce_text_changes = 150,
  }
}

nvim_lsp.eslint.setup {
  on_attach = on_attach,
  capabilities = cmp_capabilities,

  flags = {
    debounce_text_changes = 150,
  }
}

nvim_lsp.stylelint_lsp.setup{
  on_attach = on_attach,
  capabilities = cmp_capabilities,

  filetypes = {
    "css",
    "scss",
    "sass",
    "less"
  },
  flags = {
    debounce_text_changes = 150,
  }
}

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.cssls.setup {
  on_attach = on_attach,
  capabilities = cmp_capabilities,

  flags = {
    debounce_text_changes = 150,
  }
}

-- [[ LSP Saga ]]
require('lspsaga').setup{
  error_sign = ' ', 
  warn_sign = ' ', 
  infor_sign = ' ', 
  hint_sign = ' '
}
