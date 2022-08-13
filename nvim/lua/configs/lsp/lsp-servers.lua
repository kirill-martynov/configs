local runtime_path = vim.split(package.path, ';')

table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local servers = { 'tsserver', 'eslint', 'stylelint_lsp', 'cssls', --[[ 'cssmodules_ls', ]] 'sumneko_lua' }

local enhance_server_options = {
  ['stylelint_lsp'] = function(opts)
    opts.filetypes = { "css", "scss", "sass", "less" }
  end,
  ['cssls'] = function(opts)
    opts.settings = {
      css = { validate = false },
      scss = { validate = false },
      less = { validate = false },
    }
  end,
  ['sumneko_lua'] = function(opts)
    opts.settings = {
      Lua = {
        runtime = { version = 'LuaJIT', path = runtime_path },
        diagnostics = { globals = { 'vim' } },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false },
      },
    }
  end
}

for _, server in pairs(servers) do
  local options = {
    on_attach = require('configs.lsp.lsp-handlers').on_attach,
    capabilities = require('configs.lsp.lsp-handlers').capabilities
  }

  if enhance_server_options[server] then
    enhance_server_options[server](options)
  end

  require('lspconfig')[server].setup(options)
end
