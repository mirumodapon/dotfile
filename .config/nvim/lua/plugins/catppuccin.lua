return {
  'catppuccin/nvim',
  name = 'catppuccin',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      transparent_background = true
    })

    vim.cmd.colorscheme 'catppuccin'
  end
}
