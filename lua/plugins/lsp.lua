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
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- Set up mason-lspconfig
      require("mason-lspconfig").setup({
        -- A list of servers to automatically install if they're not already installed
        ensure_installed = { "lua_ls", "pyright", "gopls", "rust_analyzer", "tsserver" },

        -- This is the key part: set up a handler that will be called for each server
        handlers = {
          -- The first entry is the default handler.
          -- It's fired for every server that is not explicitly handled.
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = require("cmp_nvim_lsp").default_capabilities(),
              on_attach = function(client, bufnr)
                -- Your on_attach function containing keymaps
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
