local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "csharp",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>b", ":!dotnet build<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>r", ":!dotnet run<CR>", { noremap = true, silent = true })
  end,
})

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
  vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = bufnr })
  vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
end)

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({})

lspconfig.tsserver.setup({})

lspconfig.omnisharp.setup({

  cmd = {
    vim.fn.stdpath("data") .. "/mason/bin/omnisharp",
    "--languageserver",
    "--hostPID",
    tostring(vim.fn.getpid()),
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    -- Map F5 in this buffer to open a horizontal split at the bottom and run dotnet
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      "<cmd>botright split | terminal dotnet run<CR>",
      { noremap = true, silent = true }
    )
  end,
})
lspconfig.gopls.setup({
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})

lspconfig.volar.setup({
  on_init = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentFormattingRangeProvider = false
  end,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = bufnr })
    vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
  end,
})

lspconfig.clangd.setup({})

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ["lua_ls"] = { "lua" },
    ["tsserver"] = { "javascript", "typescript" },
    ["volar"] = false,
  },
})
