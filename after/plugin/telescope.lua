local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Allows us to look through only files in a git repo (e.g. ignore node_modules)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Search with grep
-- NOTE: requires ripgrep to be installed https://github.com/BurntSushi/ripgrep#installation
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- Search through help tags
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})

