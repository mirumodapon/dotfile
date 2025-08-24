return {
  'stevearc/conform.nvim',
  event = 'VeryLazy',
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        rust = { 'rustfmt' },
        go = { 'gofmt' },
        vue = { 'eslint_d' },
      }
    })

    vim.keymap.set({ "n", "v" }, "<leader>fo", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format file or range" })
  end
}

