return {
 -- {
 --   "navarasu/onedark.nvim",
 --   lazy = false,
 --   name = "onedark",
 --   config = function()
 --     require('onedark').setup {
 --       style = 'warmer'
 --     }
 --     require('onedark').load()
 --   end,
 -- }
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    config = function() 
      require("monokai-pro").setup({
        transparent_background = true
      })
      vim.cmd([[colorscheme monokai-pro]])
    end,
  }
}

