local opts = { noremap = true, silent = true }

--salir del insert mode
vim.keymap.set("i", "jj", "<ESC>", opts)

-- Clear search highlight
vim.keymap.set("n", "<esc>", ":noh<return><esc>", opts)

--split
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window

--salir del insert modekeymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('', 'sh', '<C-w>h')
vim.keymap.set('', 'sk', '<C-w>k')
vim.keymap.set('', 'sj', '<C-w>j')
vim.keymap.set('', 'sl', '<C-w>l')
-- Cerrar pestañas con <C-w>
--vim.api.nvim_set_keymap('n', '<C-w>', ':BufferLineCloseRight<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })



	-- Resize window
--vim.keymap.set('n', '<C-w><left>', '<C-w><')
--vim.keymap.set('n', '<C-w><right>', '<C-w>>')
--vim.keymap.set('n', '<C-w><up>', '<C-w>+')
--vim.keymap.set('n', '<C-w><down>', '<C-w>-')




