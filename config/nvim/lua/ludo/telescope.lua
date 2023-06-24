local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader><space>', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>t', builtin.live_grep, {})
vim.keymap.set('n', '<leader><space>', builtin.buffers, {})

