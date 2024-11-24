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
        "RainbowViolet",
        "RainbowCyan",
      }

      local inactive_highlight = {
        "InactiveRainbowBlack",
      }

      local hooks = require("ibl.hooks")

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#e96b8d" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#f8e579" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ee985f" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#91d595" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#928adc" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#7bd1e3" })
        vim.api.nvim_set_hl(0, "InactiveRainbowBlack", { fg = "#3f3d40" })
      end)

      require("ibl").setup({
        scope = { highlight = highlight },
        indent = { char = "┊", highlight = inactive_highlight },
      })

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
