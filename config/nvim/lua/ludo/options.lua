local set = vim.opt

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
set.ignorecase = true
set.smartcase = true
set.showmatch = false

-- CUT & PASTE
set.clipboard = "unnamedplus"

-- SPLITS
set.splitbelow = true
set.splitright = true

-- SCROLLOFF
set.scrolloff = 16
set.sidescrolloff = 8

-- HIGHLIGHT CURRENT LINE
set.cursorline = true

-- TERMINAL COLORS
set.termguicolors = true

-- HIDE STATUS LINE
set.laststatus = 0

-- ENABLE MOUSE
set.mouse = 'a'








--[[
map('n', 'coc', function()
  vim.wo.cursorline = not vim.wo.cursorline
end)

map('n', 'cox', function()
  vim.wo.cursorcolumn = not vim.wo.cursorcolumn
  vim.wo.cursorline = vim.wo.cursorcolumn
end)

map('n', 'con', function()
  vim.wo.number = not vim.wo.number
end)

map('n', 'cor', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end)

map('n', 'cos', function()
  vim.wo.spell = not vim.wo.spell
end)

map('n', 'col', function()
  vim.wo.list = not vim.wo.list
end)

map('n', 'coh', function()
  vim.o.hlsearch = not vim.o.hlsearch
end)

map('n', 'cow', function()
  vim.o.wrap = not vim.o.wrap
end)
]]--


