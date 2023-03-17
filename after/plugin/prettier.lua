-- Set Prettier options
vim.g.prettier_quickfix_enabled = 0
vim.api.nvim_exec([[
  autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
]], true)
vim.g.prettier_config_print_width = 'auto'
vim.g.prettier_config_tab_width = 2
vim.g.prettier_config_use_tabs = false
vim.g.prettier_config_parser = ''
vim.g.prettier_config_config_precedence = 'file-override'
vim.g.prettier_config_prose_wrap = 'preserve'
vim.g.prettier_config_html_whitespace_sensitivity = 'css'
vim.g.prettier_config_require_pragma = false
vim.g.prettier_config_end_of_line = 'lf'

