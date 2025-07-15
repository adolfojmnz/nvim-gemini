return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      -- NOTE: You may need to install the vscode-node-debug2 adapter manually
      -- git clone https://github.com/microsoft/vscode-node-debug2.git ~/.local/share/nvim/vscode-node-debug2
      -- cd ~/.local/share/nvim/vscode-node-debug2 && npm install && npm run build
      dap.adapters.node2 = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME").. "/.local/share/nvim/vscode-node-debug2/out/src/nodeDebug.js" },
      }
      dap.configurations.javascript = {
        {
          type = "node2",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = vim.fn.getcwd(),
        },
      }
      dap.configurations.typescript = {
        {
          type = "node2",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          outFiles = { vim.fn.getcwd().. '/dist/**/*.js' },
        },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
      },
    },
  },
}