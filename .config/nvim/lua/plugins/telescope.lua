return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        path_display = { 'smart' }
      }
    })

    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Open files finder' })
    vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
    vim.keymap.set('n', '<leader>fs', '<cmd>Telescope grep_string<CR>', { desc = 'Grep string under cursor' })
    vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'Open buffer list' })
    vim.keymap.set('n', '<leader>fr', '<cmd>Telescope registers<CR>', { desc = 'Open registers list' })
    vim.keymap.set('n', '<leader>fm', '<cmd>Telescope marks<CR>', { desc = 'Open marks list' })
    vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'Open telescope help' })
  end

}


