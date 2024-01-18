return {
  "VonHeikemen/searchbox.nvim",
  config = function()
    vim.keymap.set('n', '<leader>s', ':SearchBoxIncSearch modifier=ignore-case<CR>')
    vim.keymap.set('n', '<leader>sr', ':SearchBoxReplace modifier=ignore-case<CR>')
    vim.keymap.set('x', '<leader>s', ':SearchBoxIncSearch visual_mode=true modifier=ignore-case<CR>')
    vim.keymap.set('x', '<leader>sr', ':SearchBoxReplace visual_mode=true modifier=ignore-case<CR>')
  end
}
