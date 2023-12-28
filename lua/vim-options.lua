vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.numberwidth = 5
vim.cmd([[hi Normal guibg=NONE]])

vim.opt.clipboard:append("unnamedplus")

vim.api.nvim_set_keymap("n", "<leader>ir", ":set invrelativenumber<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rn", ":set relativenumber<CR>", { noremap = true, silent = true })
