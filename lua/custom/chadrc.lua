local M = {}

M.ui = {
  theme = "nord",
}

M.plugins = {
  user = {
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
    end },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end },
  },
  override = {
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        "ansible-language-server",
        "bash-language-server",
        "clangd-format",
        "clangd",
        "cpplint",
        "css-lsp",
        "delve",
        "diagnostic-languageserver",
        "eslint-lsp",
        "eslint_d",
        "fixjson",
        "gofumpt",
        "golangci-lint",
        "gopls",
        "haskell-language-server",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "python-lsp-server",
        "revive",
        "yaml-language-server"
      },
    },
  },
  remove = {},
}



return M
