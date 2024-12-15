return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    config = function()
      --  Monokai Pro Default Palette
      -- {
      --   accent1 = "#ff6188", -- red
      --   accent2 = "#fc9867", -- orange
      --   accent3 = "#ffd866", -- yellow
      --   accent4 = "#a9dc76", -- green
      --   accent5 = "#78dce8", -- cyan
      --   accent6 = "#ab9df2", -- blue
      --   background = "#2d2a2e",
      --   dark1 = "#221f22",
      --   dark2 = "#19181a",
      --   dimmed1 = "#c1c0c0", -- light grey
      --   dimmed2 = "#939293", -- medium grey
      --   dimmed3 = "#727072", -- dark grey
      --   dimmed4 = "#5b595c", -- darker grey
      --   dimmed5 = "#403e41", -- darkest grey
      --   text = "#fcfcfa"
      -- }
      local base_pallet = require('monokai-pro.colorscheme.palette.pro')

      -- overriding the base pallet with some darker backgrounds and darks
      local pallet = vim.tbl_extend("force", base_pallet, {
        background = "#1a1a1a",
        dark1 = "#090909",
        dark2 = "#0a0a0a",
      })

      require("monokai-pro").setup({
        devicons = true,
        terminal_colors = true,
        filter = "pro",
        overridePalette = function()
          return pallet
        end,
      })

      vim.cmd([[colorscheme monokai-pro]])

      vim.api.nvim_set_hl(0, "FloatBorder", { bg = pallet.dark2, fg = pallet.dimmed3 })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = pallet.dark2 })
      vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = pallet.accent5 })
    end,
  }
}
