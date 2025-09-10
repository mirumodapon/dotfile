return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/cmp-nvim-lsp',
    { 'antosha417/nvim-lsp-file-operations', config = true },
    { 'folke/neodev.nvim', opts = {} },
  },
  config = function()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }
        local keymap = vim.keymap

        keymap.set('n', '<leader> r', '<cmd>Telescope lsp_references<CR>', { desc = 'Show LSP reference' })
        keymap.set('n', '<leader> D', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
        keymap.set('n', '<leader> d', '<cmd>Telescope lsp_definitions<CR>', { desc = 'Show LSP definitions' })
        keymap.set('n', '<leader> s', '<cmd>LspRestart<CR>', { desc = 'Restart LSP' })
        keymap.set('n', '<leader> h', vim.lsp.buf.hover, { desc = 'Show documentation for what is under cursor' })
      end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    local signs = { Error = ' ', Warn = ' ', Hint = '󰠠 ', Info = ' ' }
    for type, icon in pairs(signs) do
      local hl = 'DiagnosticSign' .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
    end

    if mason_lspconfig.setup_handlers then
      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
        ['emmet_ls'] = function()
          lspconfig['emmet_ls'].setup({
            capabilities = capabilities,
            filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less', 'svelte', 'vue' },
          })
        end,
        ['tailwindcss'] = function()
          lspconfig['tailwindcss'].setup({
            capabilities = capabilities,
            filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less', 'svelte', 'vue' },
          })
        end
      })
    end
  end,
}
