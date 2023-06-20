local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leaver>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.lsp.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.lsp.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
        'lua_ls',
		'tsserver',
		'eslint',
		'cssls',
        'html',
		'svelte',
        'jsonls',
		'bashls',
        'pyright',
        'flake8',
        'black'
	}
})

-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

cmp.setup({
	mapping = {
		-- Use Enter to confirm suggestions
		['<CR>'] = cmp.mapping.confirm({select = false}),
	}
})

lsp.setup()
