-- Cargar el plugin
local floaterm = require('floaterm')

-- Configuración
floaterm.setup{
  border = 'single',        -- Borde simple
  position = 'bottom',      -- Posicionado en la parte inferior
  width = 0.8,              -- Ancho del 80%
  height = 0.4,             -- Altura del 40%
  winblend = 3,             -- Transparencia de la ventana
  hide_numbers = true,      -- Ocultar los números de línea en la terminal
  shell = 'bash',           -- Shell por defecto
  autoinsert = false,       -- No insertar automáticamente el texto seleccionado en la terminal
  autoclose = true,         -- Cerrar la terminal automáticamente cuando se sale del buffer
  float_opts = {            -- Opciones adicionales de la ventana flotante
    border = 'single',
    highlights = {
      border = 'Normal',
      background = 'Normal',
    },
  },
  -- Ejecutar comandos al abrir la terminal
  on_open = function()
    vim.cmd('startinsert')
  end,
  -- Ejecutar comandos al cerrar la terminal
  on_close = function()
    vim.cmd('stopinsert')
  end,
  -- Configuración de comandos personalizados
  -- Aquí, Ctrl-n abre una nueva terminal
  -- y Ctrl-w cierra la terminal actual
  float_terminal_mappings = {
    ['<C-n>'] = 'new',
    ['<C-w>'] = 'kill',
  },
  -- Configuración de teclas de acceso rápido para abrir y cerrar la terminal
  -- Ctrl-t abre o cierra la terminal
  keys = {
    open = '<C-t>',
    close = '<C-t>',
  },
}
