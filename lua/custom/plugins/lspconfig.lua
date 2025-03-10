local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "gopls",
  "clangd",
  "pylsp",

  -- Web stuff
  "html",
  "cssls",
  "eslint",

  -- DevOps
  "ansiblels",
  "yamlls",

  -- Other stuff
  "jsonls",
  "sumneko_lua",
  "bashls",

}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
 end



