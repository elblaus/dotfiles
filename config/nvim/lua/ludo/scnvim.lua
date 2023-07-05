vim.cmd("autocmd FileType scnvim setlocal wrap")

local scnvim = require('scnvim')
local map = scnvim.map
local map_expr = scnvim.map_expr
scnvim.setup({
  keymaps = {
    ['<M-e>'] = map('editor.send_line', {'i', 'n'}),
    ['<C-e>'] = {
      map('editor.send_block', {'i', 'n'}),
      map('editor.send_selection', 'x'),
    },
    ['<CR>'] = map('postwin.toggle'),
    ['<M-CR>'] = map('postwin.toggle', 'i'),
    ['<M-L>'] = map('postwin.clear', {'n', 'i'}),
    ['<C-k>'] = map('signature.show', {'n', 'i'}),
    ['<leader>st'] = map('sclang.hard_stop', {'n', 'x'}),
    ['<leader>sc'] = map('sclang.start'),
    ['<leader>sr'] = map('sclang.recompile'),
  },
  editor = {
    highlight = {
      color = 'IncSearch',
    },
  },
  postwin = {
      scrollback = 10000,
      --horizontal = true,
      float = {
        enabled = true,
        width = vim.o.columns / 3,
        height = vim.o.lines - 4,
        --row = vim.o.lines - 30,
        --column = 4,
      },
  },
})


--- sketch file
vim.keymap.set('n', '<leader>ss', function()
    local template, fileName

    template = "~/Dropbox/sketches/supercollider/template.scd"
    fileName = os.date("%Y%m%d-%H%M%S", os.time())
    fileName = "~/Dropbox/sketches/supercollider/" .. fileName .. ".scd"
    os.execute("cp " .. template .. " " .. fileName)
    vim.api.nvim_command("e " .. fileName)
    vim.api.nvim_command("SCNvimStart")
end)

--- edit settings
vim.keymap.set('n', '<leader>sp', function()
    vim.api.nvim_command("e " .. "~/.config/SuperCollider/sclang_conf.yaml");
end)
