return {
  -- theme
  {
    'catppuccin/nvim',
    priority = 1000,
    lazy = false,
    init = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end
  },

  -- git integration
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufEnter',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' }
      }
    }
  },

  -- files (fzf & tree)
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      {
        'nvim-lua/plenary.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end
      },
      {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
      }
    },
    event = 'VimEnter',
    config = function()
      require 'configs.telescope'
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    event = 'VimEnter',
    config = function()
      require 'configs.nvim-tree'
    end
  },

  -- tab completion
  {
    'ervandew/supertab',
    event = 'InsertEnter'
  },

  -- autopairing of (){}[] etc
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('configs.npairs')
    end
  }
}