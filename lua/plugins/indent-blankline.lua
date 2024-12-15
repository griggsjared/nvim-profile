return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowBlue",
        "RainbowCyan",
      }

      local inactive_highlight = {
        "InactiveBlack",
      }

      local hooks = require("ibl.hooks")

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ff6188" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#ffd866" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#fc9867" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a9dc76" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#ab9df2" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#78dce8" })
        vim.api.nvim_set_hl(0, "InactiveBlack", { fg = "#3f3d40" })
      end)

      require("ibl").setup({
        scope = { highlight = highlight },
        indent = { char = "┊", highlight = inactive_highlight },
      })

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
