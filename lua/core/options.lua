-- ~/.config/nvim/lua/core/options.lua

local opt = vim.opt

-- Editor Appearance
opt.number = true           -- Show line numbers
opt.relativenumber = true   -- Show relative line numbers
opt.signcolumn = "yes"      -- Always show the sign column to prevent shifting
opt.cursorline = true       -- Highlight the current line
opt.termguicolors = true    -- Enable 24-bit RGB colors

-- Indentation
opt.tabstop = 4             -- Number of spaces a tab counts for
opt.shiftwidth = 4          -- Size of an indent
opt.expandtab = true        -- Use spaces instead of tabs
opt.smartindent = true      -- Insert indents automatically

-- Behavior
opt.wrap = false            -- Do not wrap lines
opt.scrolloff = 8           -- Keep 8 lines of context around the cursor
opt.sidescrolloff = 8       -- Keep 8 columns of context around the cursor
opt.undofile = true         -- Enable persistent undo
opt.updatetime = 250        -- Faster completion
opt.timeoutlen = 500        -- Time to wait for a mapped sequence to complete
opt.splitright = true       -- Vertical splits open to the right
opt.splitbelow = true       -- Horizontal splits open below