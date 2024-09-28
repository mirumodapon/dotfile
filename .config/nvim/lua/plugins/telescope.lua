--  live_grep feature is require command tool [ripgrep](https://github.com/BurntSushi/ripgrep)
return {
  'nvim-telescope/telescope.nvim',
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        path_display = { 'smart' }
      },
    })

  end

}

