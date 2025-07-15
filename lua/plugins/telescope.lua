-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    local keymap = vim.keymap.set

    keymap('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find files" })
    keymap('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
    keymap('n', '<leader>fb', builtin.buffers, { desc = "Find open buffers" })
    keymap('n', '<leader>fh', builtin.help_tags, { desc = "Find help tags" })
  end,
}