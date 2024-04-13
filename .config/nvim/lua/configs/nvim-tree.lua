vim.opt.termguicolors = true
vim.api.nvim_create_autocmd('BufEnter', {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require('nvim-tree.utils').is_nvim_tree_buf() then
      vim.cmd 'quit'
    end
  end
})

require('nvim-tree').setup({
  git = {
    enable = false
  },
  filters = {
    custom = {
      '^.git$',
      '^.DS_Store$'
    }
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false
      }
    }
  }
})

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })