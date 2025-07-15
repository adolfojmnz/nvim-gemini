-- ~/.config/nvim/lua/plugins/git.lua
return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = require("gitsigns")
          local keymap = vim.keymap.set
          local opts = { buffer = bufnr }

          -- Navigation
          keymap("n", "]c", function() gs.nav_hunk("next") end, { desc = "Next Hunk" })
          keymap("n", "[c", function() gs.nav_hunk("prev") end, { desc = "Prev Hunk" })

          -- Actions
          keymap("n", "<leader>hs", gs.stage_hunk, { desc = "Stage Hunk" })
          keymap("n", "<leader>hr", gs.reset_hunk, { desc = "Reset Hunk" })
          keymap("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo Stage Hunk" })
          keymap("n", "<leader>hb", function() gs.blame_line({ full = true }) end, { desc = "Blame Line" })
        end,
      })
    end,
  },
}