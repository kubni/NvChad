local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier,
  b.code_actions.eslint_d,

  -- Golang
  b.diagnostics.golangci_lint,
  b.formatting.gofumpt,

  -- C/C++
  b.formatting.clang_format,

  -- JSON
  b.formatting.fixjson,


  -- DevOps
  b.diagnostics.yamllint,


  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
   debug = true,
   sources = sources,
}
