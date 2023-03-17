--local builtin = require("telescope.builtin")

--vim.keymap.set("n", "<C-p>", builtin.find_files, {})
-- Cargar los paquetes Telescope y telescope-fzy-native
local telescope = require('telescope')
local telescope_fzy_native = require('telescope').load_extension('fzy_native')
local actions = require('telescope.actions')

-- Asignar el mapeo <C-p> para abrir Telescope
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })

-- Configurar Telescope y telescope-fzy-native
telescope.setup({
  defaults = {
		 file_ignore_patterns = {'node_modules'},
    -- Ubicación donde aparecerán los resultados
    layout_config = {
      horizontal = {
        width_padding = 0.1,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      },
    },
    -- Agregar soporte para iconos de archivos usando nvim-web-devicons
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
})

telescope_fzy_native.setup({
  -- Habilitar los iconos de archivos
  override_generic_sorter = true,
  override_file_sorter = true,
  sorter = require('telescope.sorters').get_fzy_sorter_with_icons,
  previewer = false,
})

