-- ~/.config/nvim/lua/plugins/ai.lua
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-l>",
            dismiss = "<C-h>",
          },
        },
      })
    end,
  },
}