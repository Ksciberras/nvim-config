return {
  "SmiteshP/nvim-navic",
  event = "VeryLazy",
  dependencies = {
    "nvim-lualine/lualine.nvim",
  },
  config = function()
    require("lualine-ext").init_tab_navic()
  end
}
