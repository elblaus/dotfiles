local set = vim.opt

-- LEADER
vim.g.mapleader = " "

-- INDENTATION
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true

-- LINE BREAK
set.wrap = true
set.linebreak = true

-- LINE NUMBERS & SIGN COLUMN
set.nu = true
set.relativenumber = true
set.signcolumn = 'yes'

-- SEARCH

-- CUT & PASTE
set.clipboard = "unnamedplus"

-- SPLITS
set.splitbelow = true
set.splitright = true

-- SCROLLOFF
set.scrolloff = 12
set.sidescrolloff = 8

-- HIGHLIGHT CURRENT LINE
set.cursorline = true
