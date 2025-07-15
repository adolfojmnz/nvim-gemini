-- ~/.config/nvim/lua/plugins/ui.lua
return {
  -- Colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Use the dark theme
      vim.g.gruvbox_variant = "dark"
      vim.cmd.colorscheme "gruvbox"
    end,
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          -- Use the gruvbox theme for lualine
          theme = "gruvbox",
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
        },
      })
    end,
  },

  -- File Explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    end,
  },
}
