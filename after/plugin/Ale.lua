-- Configuración de ALE
vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_lint_on_insert_leave = 0
vim.g.ale_sign_column_always = 1
vim.g.ale_set_highlights = 1
vim.g.ale_set_signs = 1
vim.g.ale_echo_msg_format = ''
vim.g.ale_linters = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  jsx = {'eslint'},
  tsx = {'eslint'},
}
vim.g.ale_fixers = {
  javascript = {'eslint', 'prettier'},
  typescript = {'eslint', 'prettier'},
	jsx = {'eslint'},
  tsx = {'eslint'},
	 html = {'prettier'},
  css = {'prettier'}
}

-- Deshabilitar mensajes emergentes
vim.cmd('let g:ale_echo_msg_error_str = ""')
vim.cmd('let g:ale_echo_msg_warning_str = ""')

-- Configuración de resaltado
vim.cmd('highlight ALEErrorSign ctermbg=red ctermfg=white guibg=#BF616A guifg=white')
vim.cmd('highlight ALEWarningSign ctermbg=yellow ctermfg=black guibg=#EBCB8B guifg=black')
vim.cmd('highlight ALEError ctermbg=none ctermfg=red guibg=none guifg=#BF616A')
vim.cmd('highlight ALEWarning ctermbg=none ctermfg=yellow guibg=none guifg=#EBCB8B')

