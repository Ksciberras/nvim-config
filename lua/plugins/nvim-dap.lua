return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      vim.keymap.set("n", "<leader>gsj", "<cmd> GoTagAdd json <cr>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>gsy", "<cmd> GoTagAdd yaml <cr>", { buffer = bufnr })
      vim.keymap.set("n", "<leader>gse", "<cmd> GoIfErr <cr>", { buffer = bufnr })
    end,
  },
}
