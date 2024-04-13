local map = vim.api.nvim_set_keymap

-- Clear search highlight using <ESC> in normal mode
map('n', '<ESC>', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Move line(s) up or down using CTRL+<UpDown>
-- single line
map('n', '<C-Up>', ':m-2<CR>', { noremap = true, silent = true })
map('n', '<C-Down>', ':m+<CR>', { noremap = true, silent = true })
-- multi line
map('v', '<C-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
map('v', '<C-Down>', ":m '>+1<CR>gv=gv'", { noremap = true, silent = true })