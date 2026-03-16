return {
  -- Includes:
  -- + mistweaverco/kulala.nvim
  -- + NeogitOrg/neogit
  -- + folke/which-key.nvim
  -- + Exafunction/codeium.vim
  -- + lambdalisue/suda.vim
  {
    'mistweaverco/kulala.nvim',
    opts = {
      global_keymaps = true,
      global_keymaps_prefix = "<leader>r",
    },
  },
  {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    keys = {
      { '<leader>g', mode = { 'n' }, '<cmd>Neogit<CR>', { desc = 'Open git control pane' } },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim"
    },
    config = true,
  },
  {
    'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    keys = {
      { '<leader>ff', mode = { 'n' }, '<cmd>Telescope find_files<CR>',  { desc = 'Open files finder' } },
      { '<leader>fg', mode = { 'n' }, '<cmd>Telescope live_grep<CR>',   { desc = 'Live grep' } },
      { '<leader>fs', mode = { 'n' }, '<cmd>Telescope grep_string<CR>', { desc = 'Grep string under cursor' } },
      { '<leader>fb', mode = { 'n' }, '<cmd>Telescope buffers<CR>',     { desc = 'Open buffer list' } },
      { '<leader>fr', mode = { 'n' }, '<cmd>Telescope registers<CR>',   { desc = 'Open registers list' } },
      { '<leader>fm', mode = { 'n' }, '<cmd>Telescope marks<CR>',       { desc = 'Open marks list' } },
      { '<leader>fh', mode = { 'n' }, '<cmd>Telescope help_tags<CR>',   { desc = 'Open telescope help' } },
      { '<leader>ft', mode = { 'n' }, '<cmd>TodoTelescope<CR>',         { desc = 'Open TODO list' } },
    },
    config = function()
      local telescope = require('telescope')

      telescope.setup({
        defaults = {
          path_display = { 'smart' }
        }
      })
    end
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },
  {
    'lambdalisue/suda.vim',
    cmd = { 'SudaWrite', 'SudaRead' }
  },
}
