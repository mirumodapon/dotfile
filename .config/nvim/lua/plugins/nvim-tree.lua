return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require('nvim-tree').setup({
      view = {
        width = 35,
        relativenumber = true
      },
      renderer = {
        indent_markers = {
          enable = true
        }
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false
          }
        }
      },
      filters = {
        custom = { '.DS_Store' }
      },
      git = {
        ignore = false
      }
    })

    vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeFocus<CR>', { desc = 'Open explore' })
    vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle explore' })
    vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh explore' })
  end
}
