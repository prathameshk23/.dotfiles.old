local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({ extra_args = { "--trailing-comma all", "--single-quote false" } }),
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
  },
})
