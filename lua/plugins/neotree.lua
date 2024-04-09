return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      -- Other configuration settings...
      default_component_configs = {
        -- Other component configurations...
      },
      filesystem = {
        filtered_items = {
          visible = false,         -- Set this to false to show hidden files
          hide_dotfiles = false,   -- Set this to false to show dotfiles
          hide_gitignored = false, -- Optionally, set this to false to show files ignored by git
          -- Other filters...
        },
        -- Other filesystem configurations...
      },
      -- Other plugin parts...
    })
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
    vim.keymap.set("n", "<C-t>", ":Neotree close<CR>")
  end,
}
