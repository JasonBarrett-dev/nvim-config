vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disable line wrapping
vim.opt.wrap = false


vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 9999

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {"*"},
    callback = function(ev)
        save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

vim.opt.clipboard = "unnamedplus"
