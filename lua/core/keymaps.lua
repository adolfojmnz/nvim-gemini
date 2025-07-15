-- ~/.config/nvim/lua/core/keymaps.lua

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- General Keymaps
keymap("n", "<leader>w", ":w<CR>", { desc = "Save buffer" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit window" })

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize window up" })
keymap("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize window down" })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Resize window left" })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Resize window right" })