return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        opts = {
      		integrations = {
    			  cmp = true,
      			treesitter = true,
      		},
      	}
      })
      vim.cmd([[colorscheme monokai-pro]])
    end,
  }
}

