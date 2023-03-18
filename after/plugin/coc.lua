-- Configuración de coc.nvim
vim.g.coc_global_extensions = {'coc-tsserver', 'coc-eslint', 'coc-prettier'}
vim.g.coc_filetype_map = {
  javascript = 'tsserver',
  javascriptreact = 'tsserver',
  typescript = 'tsserver',
  typescriptreact = 'tsserver'
}
vim.g.coc_fix_on_save = 1
vim.g.coc_disable_chdir = 1

-- Autocompletado y navegación
vim.cmd('inoremap <expr> <Tab> pumvisible() ? "\\<C-n>" : "\\<Tab>"')
vim.cmd('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')
vim.cmd('nnoremap <silent> gd :call CocAction("jumpDefinition")<CR>')
vim.cmd('nnoremap <silent> gy :call CocAction("jumpTypeDefinition")<CR>')
vim.cmd('nnoremap <silent> gi :call CocAction("jumpImplementation")<CR>')
vim.cmd('nnoremap <silent> gr :call CocAction("jumpReferences")<CR>')
vim.cmd('nnoremap <silent> ca :call CocAction("codeAction")<CR>')

-- Linters y fixers
vim.cmd('autocmd BufWritePre *.{js,jsx,ts,tsx} CocCommand eslint.executeAutofix')
vim.cmd('autocmd BufWritePre *.{js,jsx,ts,tsx} CocCommand tsserver.organizeImports')


-- Configuración de emmet
local emmet_settings = {
  ['jsx.enabled'] = true,
  ['javascript.jsx'] = {
    ['prefix'] = 'jx'
  }
}

-- Autocompletado de emmet en HTML y JSX
vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_leader_key = '<c-z>'
vim.g.user_emmet_install_global = 0
vim.g.user_emmet_settings = emmet_settings
vim.api.nvim_exec([[
  augroup CocEmmet
    autocmd!
    autocmd FileType html,typescript.tsx EmmetInstall
  augroup END
]], false)

