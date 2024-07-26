return {
  "github/copilot.vim",
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>cpe", ":Copilot enable<CR>", { noremap = true, silent = false })
    vim.api.nvim_set_keymap("n", "<leader>cpd", ":Copilot disable<CR>", { noremap = true, silent = false })
  end,
}
