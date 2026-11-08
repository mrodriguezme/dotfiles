return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,     -- load at startup
  priority = 1000,  -- load before other plugins so highlights apply cleanly
  config = function()
    require("gruvbox").setup({
      contrast = "",
      transparent_mode = false,
      italic = {
        strings = false,
        comments = true,
        operators = false,
        folds = true,
      },
    })
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
  end,
}
