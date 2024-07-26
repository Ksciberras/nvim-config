local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
      sources = {
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "html",
            "css",
            "vue",
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
          },
        }),

        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.eslint_d.with({
          filetypes = { "vue", "javascript", "typescript", "javascriptreact", "typescriptreact" },
        }),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.csharpier,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.google_java_format,
      },
    })
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
  end,
}
