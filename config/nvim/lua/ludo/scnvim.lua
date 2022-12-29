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
    ['<leader>st'] = map('sclang.hard_stop', {'n', 'x'}),
    ['<leader>sc'] = map('sclang.start'),
    ['<leader>sr'] = map('sclang.recompile'),
  },
  editor = {
    highlight = {
      color = 'IncSearch',
    },
  },
--  postwin = {
--      scrollback = '10000',
--      horizontal = true,
--      float = {
--        enabled = true,
--        width = vim.o.columns,
--        height = 24,
--        row = vim.o.lines,
--      },
--  },
})


--- sketch file 
vim.keymap.set('n', '<leader>ss', function()
    local template, fileName

    template = "~/Dropbox/sketches/supercollider/template.scd"
    fileName = os.date("%Y%m%d-%H%M%S", os.time())
    fileName = "~/Dropbox/sketches/supercollider/" .. fileName .. ".scd";
    os.execute("cp " .. template .. " " .. fileName);
    vim.api.nvim_command("e " .. fileName)
    vim.api.nvim_command("SCNvimStart")
end)

-- comp
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end
local lspkind = require'lspkind'
local luasnip = require'luasnip'
local cmp = require'cmp'

local next_item = function(fallback)
  if cmp.visible() then
    cmp.select_next_item()
  elseif has_words_before() then
    cmp.complete()
  else
    fallback()
  end
end

local prev_item = function(fallback)
  if cmp.visible() then
    cmp.select_prev_item()
  else
    fallback()
  end
end

cmp.setup {
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  completion = {
    keyword_length = 3,
  },
  window = {
    documentation = false,
  },
  experimental = {
    native_menu = false,
    ghost_text = false,
  },
  formatting = {
    format = lspkind.cmp_format({preset = 'default', mode = 'symbol_text', maxwidth = 50})
  },
  mapping = {
    -- ['<C-j>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(next_item, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(prev_item , { 'i', 's' }),
    ['<C-n>'] = cmp.mapping(next_item, { 'i', 's' }),
    ['<C-p>'] = cmp.mapping(prev_item , { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'tags' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'luasnip' },
  },
}
