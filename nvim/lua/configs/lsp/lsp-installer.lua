-- [[ LSP Installer ]]
local lsp_installer = require("nvim-lsp-installer")

local servers = { 'tsserver', 'eslint', 'cssls', 'stylelint_lsp', 'sumneko_lua' }

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end

lsp_installer.on_server_ready(function(server)
  local default_options = {
    on_attach = require("configs.lsp.lsp-handlers").on_attach,
    capabilities = require("configs.lsp.lsp-handlers").capabilities,
    flags = { debounce_text_changes = 150 }
  }

  if server.name == 'sumneko_lua' then
    local sumneko_lua_options = require("configs.lsp.servers.sumneko_lua")
    default_options = vim.tbl_deep_extend("force", sumneko_lua_options, default_options)
  end

  if server.name == 'stylelint_lsp' then
    local stylelint_options = require("configs.lsp.servers.stylelint_lsp")
    default_options = vim.tbl_deep_extend("force", stylelint_options, default_options)
  end

  server:setup(default_options)
end)
