--configs personales
vim.g.mapleader = " "
vim.opt.signcolumn = 'yes'
vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- Eliminar espacios en blanco al final del archivo al guardar
vim.api.nvim_exec([[
  augroup trim_spaces
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
  augroup END
]], false)

-- Desactivar las alertas de plugins o configuraciones faltantes
vim.o.errorbells = false
vim.o.visualbell = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false


