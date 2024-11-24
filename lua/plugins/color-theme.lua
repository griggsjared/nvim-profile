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
            cmp = false,
            treesitter = true,
            telescope = true,
          },
        },
      })

      -- vim.cmd([[autocmd! ColorScheme * highlight NormalFloat guibg=#1e1e1e]])
      -- vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=#ffffff guibg=#1e1e1e]])
      vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=#ffffff]])

      vim.cmd([[colorscheme monokai-pro]])
    end,
  },
}
