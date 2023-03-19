-- Instala el tema ayu
vim.cmd('packadd! ayu')

-- Habilita el tema ayu
vim.cmd('colorscheme ayu')

-- Configura el background
vim.opt.background = 'dark'

-- Configura los números de línea
vim.opt.relativenumber = true

-- Configura el espacio en blanco
vim.opt.list = true
vim.opt.listchars = {tab = '» ', trail = '·', extends = '>', precedes = '<'}

-- Configura la pestaña actual
vim.cmd('highlight TabLineSel guibg=#2E3440')

-- Configura el cursor
vim.opt.guicursor = ''

-- Configura el borde de la ventana
vim.opt.winhighlight = 'Normal:NormalNC,NormalNC:NormalNC,SignColumn:NormalNC'

