-- SET LEADER
vim.g.mapleader = " "

-- NAVIGATE BUFFERS
vim.keymap.set("n", "<A-l>", ":bnext<cr>")
vim.keymap.set("n", "<A-h>", ":bprevious<cr>")
vim.keymap.set("n", "<A-q>", ":bdelete<cr>")

-- NAVIGATE WINDOWS
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- RESIZE WINDOWS
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- FILE EXPLORER
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- F1 ESCAPE
vim.keymap.set("i", "<F1>", "<ESC>")

-- TRAILING WHITESPACE
vim.keymap.set('n', '<Leader>wt', [[:%s/\s\+$//e<cr>]])
