return {
  "numToStr/Comment.nvim",
  opts = {},
  config = function()
    require("Comment").setup({
      toggler = {
        ---Line-comment toggle keymap
        line = "<leader>/",
        ---Block-comment toggle keymap
        block = "<leader><leader>/",
      },
      opleader = {
        ---Line-comment keymap
        line = "<leader>/",
        ---Block-comment keymap
        block = "<leader><leader>/",
      },
    })
  end,

  lazy = false,
}
