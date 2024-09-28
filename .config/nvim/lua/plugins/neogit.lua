return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim"
  },
  config = function() 
    require('neogit').setup()

    vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = 'Open git control pane' })
  end
}
