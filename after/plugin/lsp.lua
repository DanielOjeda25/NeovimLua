local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.preset("recommended")

lsp.ensure_installed({
  "tsserver",
   "clangd",
})

lsp.on_attach(
function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
 	vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
  	vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  	vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  	vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, opts)
  	vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, opts)
  	vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  	vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  	vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  	vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
end
	)

	
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
  vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup_format,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ bufnr = bufnr })
    end,
  })
end
lsp.nvim_workspace()

lsp.setup()

