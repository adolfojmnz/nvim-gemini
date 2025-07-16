-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  -- Mason for managing LSPs, DAPs, linters, and formatters
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
  },

  -- LSP Server Configurations
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- This dependency order is crucial.
      -- It ensures mason is loaded before mason-lspconfig.
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "gopls", "rust_analyzer", "tsserver" },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = require("cmp_nvim_lsp").default_capabilities(),
              on_attach = function(client, bufnr)
                local keymap = vim.keymap.set
                local opts = { noremap = true, silent = true, buffer = bufnr }

                keymap("n", "gD", vim.lsp.buf.declaration, opts)
                keymap("n", "gd", vim.lsp.buf.definition, opts)
                keymap("n", "K", vim.lsp.buf.hover, opts)
                keymap("n", "gi", vim.lsp.buf.implementation, opts)
                keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
                keymap("n", "gr", vim.lsp.buf.references, opts)
                vim.diagnostic.config({ virtual_text = true })
              end,
            })
          end,
        },
      })
    end,
  },
}

