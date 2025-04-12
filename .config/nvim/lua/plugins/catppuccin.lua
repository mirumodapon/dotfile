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
      require("catppuccin").setup({
        transparent_background = true
      })
      require('lualine').setup({ options = { theme = 'auto' } })
      require('barbecue').setup { theme =  'catppuccinn' }

      vim.cmd.colorscheme 'catppuccin'
    end
}
