return {
  {
    "ray-x/go.nvim",
    dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap", "nvim-lua/plenary.nvim" },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = '<cmd>GoInstallBinaries<cr>',
  },
}