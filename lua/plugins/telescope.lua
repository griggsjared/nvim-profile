return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      local telescope = require("telescope.builtin")

      require("telescope").setup({
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
          },
        },
      })

      vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#000000" })

      require('telescope').load_extension('fzf')

      vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
      vim.keymap.set("n", "<leader>fg", require("telescope.multigrep").live_multigrep, {})
      vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
      vim.keymap.set("n", "<leader>fo", telescope.oldfiles, {})
      vim.keymap.set("n", "<leader>fc", function()
        telescope.find_files({
          prompt_title = "Find Config Files",
          cwd = vim.fn.stdpath("config"),
        })
      end, {})
      vim.keymap.set("n", "<leader>fp", function()
        require('telescope.multigrep').live_multigrep({
          prompt_title = "Multi Grep All Project Files",
          cwd = "~/Projects",
        })
      end, {})

      local last_search = nil
      vim.keymap.set("n", "<leader><leader>", function()
        if last_search == nil then
          telescope.find_files()
          local cached_pickers = require("telescope.state").get_global_key("cached_pickers") or {}
          last_search = cached_pickers[1]
        else
          telescope.resume({ picker = last_search })
        end
      end, {})
    end,
  },
}
