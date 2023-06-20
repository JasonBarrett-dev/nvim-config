vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Make moving between tabs a bit easier
vim.keymap.set("n", "<leader><Left>", ":tabprevious<CR>")
vim.keymap.set("n", "<leader><Right>", ":tabnext<CR>")
vim.keymap.set("n", "<leader><Down>", ":tablast<CR>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader><leader>", ":noh<CR>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Find and replace on current word
vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Search for current word
vim.keymap.set("n", "<leader>s", ":/<C-r><C-w>")

vim.keymap.set("n", "<leader>md", ":MarkdownPreviewToggle<CR>")

