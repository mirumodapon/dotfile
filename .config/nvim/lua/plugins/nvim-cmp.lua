return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip', -- options
    'rafamadriz/friendly-snippets', -- options
    'onsails/lspkind.nvim' -- options
  },
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    local lspkind = require('lspkind')

    cmp.setup({
      completion = {
        completeopt = 'menu,menuone,preview,noselect'
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = false })
      }),
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { nmae = 'luasnip' },
        { name = 'path' },
        { name = 'buffer' }
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
      },
      formatting = {
        format = lspkind.cmp_format({
          waxwidth = 50,
          ellipsis_char = '...'
        })
      }
    })

 end
}
