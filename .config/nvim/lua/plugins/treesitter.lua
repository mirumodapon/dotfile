return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  config = function()
    require('nvim-treesitter.configs').setup({
      highlight = {
        enable = true
      },
      ensure_installed = {
        'markdown',
        'yaml',
        'json',
        'toml'
      },
      indent = {
        enable = true
      },
      playground = {
        enable = true
      },
      rainbow = {
        enable = true
      }
    })

  end
}

