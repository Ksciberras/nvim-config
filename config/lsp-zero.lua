local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
  vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = bufnr })
end)

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ["lua_ls"] = { "lua" },
    ["tsserver"] = { "javascript", "typescript" },
    ["templ"] = { "templ" },
  },
})
