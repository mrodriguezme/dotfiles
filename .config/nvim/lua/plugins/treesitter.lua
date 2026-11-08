return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
	    "c", "cpp", "cmake", "lua", "json", "bash", "markdown", "vim", "vimdoc",
    })

    -- turn on highlighting for any filetype that has a parser
    vim.api.nvim_create_autocmd("FileType", {
      callback = function() pcall(vim.treesitter.start) end,
    })
  end,
}
