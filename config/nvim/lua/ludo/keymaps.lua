-- LOCAL VARIABLES FOR BREVITY
local map = vim.keymap.set
local opt = { silent = true }

-- SET LEADER
vim.g.mapleader = " "

-- NAVIGATE BUFFERS
map("n", "<A-l>", ":bnext<cr>", opt)
map("n", "<A-h>", ":bprevious<cr>", opt)
map("n", "<A-q>", ":bdelete<cr>", opt)

-- NAVIGATE WINDOWS
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- RESIZE WINDOWS
map("n", "<C-Up>", ":resize +2<CR>", opt)
map("n", "<C-Down>", ":resize -2<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- FILE EXPLORER
map("n", "<leader>e", ":Lexplore 30<cr>" ,opt)
