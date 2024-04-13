local map = vim.api.nvim_set_keymap

require('telescope').setup({})

map('n', '<C-t>', ':Telescope git_files<CR>', { noremap = true, silent = true })
map('n', '<C-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })