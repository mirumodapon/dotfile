return {
  "lukas-reineke/indent-blankline.nvim",
  event = { 'BufReadPre', 'BufNewFile' },
  main = "ibl",
  config = function()
    local highlight = { "RainbowRed" }

    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    end)

    require('ibl').setup({ scope = { highlight = highlight } })
    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end
}
