-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true }) -- open
map('t', 'jk', '<C-\\><C-n>') -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>') -- open/close

-- jk in INSERT MODE to exit
map('i', 'jk', '<Esc>')

-- Telescope
map('n', ' p', ':Telescope find_files hidden=true<CR>')
map('n', ' a', ':Telescope live_grep<CR>')
map('n', ' f', ':Telescope current_buffer_fuzzy_find<CR>')
map('n', ' d', ':Telescope diagnostics<CR>')
map('n', ' b', ':Telescope file_browser<CR>')
map('n', 'gl', '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>')
-- Shift current visual block
map('v', "<", "<gv")
map('v', ">", ">gv")
