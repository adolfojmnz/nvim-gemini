return {
  {
    "mfussenegger/nvim-dap",
    dependencies = { "mfussenegger/nvim-dap-python" },
    config = function()
      -- NOTE: You'll need to have a python interpreter with debugpy installed.
      -- You can create a virtual environment for it:
      -- python -m venv ~/.virtualenvs/debugpy
      -- ~/.virtualenvs/debugpy/bin/python -m pip install debugpy
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "ruff" },
      },
    },
  },
}