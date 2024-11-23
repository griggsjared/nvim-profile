return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          prefer_local = "node_modules/.bin",
          condition = function(utils)
            return utils.root_has_file({
              ".prettierrc",
              ".prettierrc.json",
              ".prettierrc.yaml",
              ".prettierrc.yml",
              ".prettierrc.js",
              ".prettierrc.cjs",
              "prettier.config.js",
            })
          end,
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "json",
            "yaml",
            "markdown",
            "css",
            "scss",
            "html",
            "vue",
            "svelte",
            "graphql",
            "lua",
          },
        }),
        require("none-ls.diagnostics.eslint").with({
          prefer_local = "node_modules/.bin",
          condition = function(utils)
            return utils.root_has_file({
              ".eslintrc.js",
              ".eslintrc.json",
              ".eslintrc",
              ".eslintrc.yml",
              ".eslintrc.yaml",
            })
          end,
        }),
        -- require("none-ls.diagnostics.eslint_d").with({
        --   prefer_local = "node_modules/.bin",
        --   condition = function(utils)
        --     return utils.root_has_file({
        --       ".eslintrc.js",
        --       ".eslintrc.json",
        --       ".eslintrc",
        --       ".eslintrc.yml",
        --       ".eslintrc.yaml",
        --     })
        --   end,
        -- }),
        -- null_ls.builtins.formatting.goimports,
        -- null_ls.builtins.formatting.gofmt,
        -- null_ls.builtins.formatting.pint
        -- null_ls.builtins.diagnostics.eslint_d,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
