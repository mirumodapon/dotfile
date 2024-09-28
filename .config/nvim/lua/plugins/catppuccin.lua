return {
    'catppuccin/nvim',
    name = 'catppuccin',
    dependencies = {
      'nvim-lualine/lualine.nvim',
      'utilyre/barbecue.nvim',
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons'
    },
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin'

      require('lualine').setup({ options = { theme = 'auto' } })
      require('barbecue').setup { theme =  'catppuccinn' }

    end
}
