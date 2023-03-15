local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  }
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<C-ls>diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'gl', '<C-ls>show_diagnostic<CR>', opts)
vim.keymap.set('n', 'K', '<C-ls>hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<C-ls>lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<C-ls>peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<C-ls>rename<CR>', opts)

-- code action
local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<C-ls>ca", function() codeaction:code_action() end, { silent = true })
vim.keymap.set("v", "<C-ls>ca", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })

