return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       colorscheme = "mocha",
  --     })
  --     vim.cmd([[colorscheme catppuccin-mocha]])
  --   end,
  -- },
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
            telescope = true,
      		},
      	}
      })
      vim.cmd([[colorscheme monokai-pro]])
    end,
  }
}

