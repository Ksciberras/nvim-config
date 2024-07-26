return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {
    keys = "etovxqpdygfblzhckisuran",
  },
  config = function()
    require("hop").setup({})
    vim.api.nvim_set_keymap("n", "f", "<cmd>lua require'hop'.hint_char1()<cr>", {})
    vim.api.nvim_set_keymap("v", "f", "<cmd>lua require'hop'.hint_char1()<cr>", {})

    vim.api.nvim_set_keymap("n", "F", "<cmd>lua require'hop'.hint_char2()<cr>", {})
    vim.api.nvim_set_keymap("v", "F", "<cmd>lua require'hop'.hint_char2()<cr>", {})
  end,
}
