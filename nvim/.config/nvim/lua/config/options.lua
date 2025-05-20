-- [[ General ]] --

-- Set <space> as the leader key
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable Nerd Font
vim.g.have_nerd_font = true

-- [[ Settings ]]
-- See :help option-list
-- See :help vim.opt

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time (for which-key)
vim.opt.timeoutlen = 300

-- Line numbers and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Enable mouse mode
vim.opt.mouse = "a"

-- Disable showmode
vim.opt.showmode = false

-- Highlight cursor line
vim.opt.cursorline = false

-- Keep signcolumn on
vim.opt.signcolumn = "yes"

-- Tabs and spaces
vim.opt.tabstop = 4 -- 4 spaces for tab (just rendering, no effect on text)
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- Every wrapping line will be visually indented
vim.opt.breakindent = true

-- Case insensitive search unless mixed case is used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Preview substitutions live as you type
vim.opt.inccommand = "split"

-- Use system clipboard
vim.opt.clipboard:append("unnamedplus")

-- Save undo history
vim.opt.undofile = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "- ", trail = "·", nbsp = "␣" }
