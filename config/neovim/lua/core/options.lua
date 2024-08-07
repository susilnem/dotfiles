local opt = vim.opt
-- Set highlight on search
opt.hlsearch = true

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Disable mouse mode
opt.mouse = 'a'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time
opt.updatetime = 4000
opt.signcolumn = 'yes'

-- Clipboard
opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- Concealer for Neorg
opt.conceallevel=2

-- spliting windows
opt.splitright = true
opt.splitbelow = true

-- Set colorscheme
opt.termguicolors = true
opt.background = 'dark'

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
