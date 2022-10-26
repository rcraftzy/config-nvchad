local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt,
  b.formatting.prettier,
  b.formatting.eslint_d,
  -- b.diagnostics.eslint,
  b.diagnostics.eslint_d.with({
    -- ignore prettier warnings from eslint-plugin-prettier
    filter = function(diagnostic)
      return diagnostic.code ~= "prettier/prettier"
    end,
  }),

  -- python
  b.formatting.autopep8,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
  --[[ 
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()"
    end
  end,
 ]]
}
