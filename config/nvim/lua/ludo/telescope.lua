local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', "<cmd> Telescope file_browser <CR>", {})
--vim.keymap.set('n', '<leader>ff', "<cmd> Telescope find_files <CR>", {})

vim.keymap.set('n', '<leader><space>', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader><space>', builtin.buffers, {})

--require('telescope').setup({
--    defaults = {
 --   },
    --pickers = {
        --find_files = {
            --theme = "dropdown",
        --},
        --live_grep = {
            --theme = "dropdown",
        --},
        --buffers = {
            --theme = "dropdown",
        --},
    --}
--})
