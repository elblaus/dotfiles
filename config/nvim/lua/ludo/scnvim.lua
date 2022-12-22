--vim.cmd("autocmd FileType scnvim setlocal wrap")

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
    --['<leader>st'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
    ['<leader>st'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
    ['<leader>sc'] = map('sclang.start'),
    ['<leader>sr'] = map('sclang.recompile'),
    --['<F1>'] = map_expr('s.boot'),
    --['<F2>'] = map_expr('s.meter'),
  },
  editor = {
    highlight = {
      color = 'IncSearch',
    },
  },
  postwin = {
    float = {
      enabled = true,
      height = 100000,
      width = 70,
    },
  },
})

--- temp file 
vim.keymap.set('n', '<leader>ss', function()
    local template, fileName

    template = "~/Dropbox/sketches/supercollider/template.scd"
    fileName = os.date("%Y%m%d-%H%M%S", os.time())
    fileName = "~/Dropbox/sketches/supercollider/" .. fileName .. ".scd";
    os.execute("cp " .. template .. " " .. fileName);
    vim.api.nvim_command("e " .. fileName)
    vim.api.nvim_command("SCNvimStart")
end)
