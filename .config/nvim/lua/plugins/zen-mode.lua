return {
  'folke/zen-mode.nvim',
  dependencies = { 'folke/twilight.nvim' },
  config = function()

    require('zen-mode').setup {
      plugins = {
        wezterm = {
          enabled = true,
          font = '+4'
        },
        twilight = {
          enabled = false
        }
      }
    }

    require('twilight').setup {
      dimming = {
        alpha = 0.75
      }
    }
  end
}

