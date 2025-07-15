-- ~/.config/nvim/init.lua

-- BOOTSTRAP LAZY.NVIM
local lazypath = vim.fn.stdpath("data").. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- LOAD CORE CONFIGURATION
require("core.options")
require("core.keymaps")

-- SETUP LAZY.NVIM
require("lazy").setup("plugins", {
  change_detection = {
    enabled = true,
    notify = false, -- Don't notify me about changes, I'll check manually
  },
})