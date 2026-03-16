return {
  -- Includes
  -- + hrsh7th/nvim-cmp
  -- + NvChad/nvim-colorizer.lua
  -- + numToStr/Comment.nvim
  -- + stevearc/conform.nvim
  -- + Bekaboo/deadcolumn.nvim
  -- + lewis6991/gitsigns.nvim
  -- + RRethy/vim-illuminate
  -- + lukas-reineke/indent-blankline.nvim
  -- + L3MON4D3/LuaSnip
  -- + chentoast/marks.nvim
  -- + kylechui/nvim-surround
  -- + folke/todo-comments.nvim
  -- + nvim-treesitter/nvim-treesitter
  -- + folke/trouble.nvim
  'numToStr/Comment.nvim',
  'chentoast/marks.nvim',
  {
    'L3MON4D3/LuaSnip',
    build = "make install_jsregexp",
    keys = {
      { '<C-_>', mode = { 'i' }, function() require('luasnip').expand_or_jump() end, { silent = true } }
    },
    config = function()
      require("luasnip.loaders.from_snipmate")
          .lazy_load({ paths = "~/.config/nvim/snippets" })

      -- vim.keymap.set( { "i" }, "<C-_>", function() ls.expand_or_jump() end, { silent = true })
    end
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'BufEnter',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'onsails/lspkind.nvim' },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      local lspkind = require('lspkind')

      cmp.setup({
        completion = {
          completeopt = 'menu,menuone,preview,noselect'
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<CR>'] = cmp.mapping.confirm({ select = false })
        }),
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { nmae = 'luasnip' },
          { name = 'path' },
          { name = 'buffer' },
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        formatting = {
          format = lspkind.cmp_format({
            waxwidth = 50,
            ellipsis_char = '...',
          })
        },
      })
    end,
  },
  {
    'NvChad/nvim-colorizer.lua',
    event = 'BufEnter',
    opts = {
      filetypes = { '*', '!lua' }, -- disable colorizer for lua
      user_default_options = { mode = 'virtualtext' },
    },
  },
  {
    'stevearc/conform.nvim',
    event = 'VeryLazy',
    keys = {
      { '<leader>F', mode = { 'n', 'v' }, function() require('conform').format({ async = true, lsp_fallback = true }) end, desc = 'Format file or range' },
    },
    config = function()
      require('conform').setup({
        formatters_by_ft = {
          rust = { 'rustfmt' },
          go = { 'gofmt' },
          vue = { 'eslint_d' },
        }
      })
    end,
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {
      modes = {
        search = {
          enabled = false
        },
        char = {
          enabled = false
        }
      }
    },
    keys = {
      { '<leader>j', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end,       desc = 'Flash' },
      { '<leader>J', mode = { 'n', 'o', 'x' }, function() require('flash').treesitter() end, desc = 'Flash Treesitter' },
      { '<c-s>',     mode = { 'c' },           function() require('flash').toggle() end,     desc = 'Toggle Flash Search' },
      -- { 'r', mode = 'o', function() require('flash').remote() end, desc = 'Remote Flash' },
      -- { 'R', mode = { 'o', 'x' }, function() require('flash').treesitter_search() end, desc = 'Treesitter Search' },
    }
  },
  {
    'RRethy/vim-illuminate',
    event = 'BufEnter',
    config = function()
      require('illuminate').configure({})
    end,
  },
  {
    'Bekaboo/deadcolumn.nvim',
    event = 'BufEnter',
    config = function()
      require('deadcolumn').setup()
      vim.opt.colorcolumn = '80,120'
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = true,
  },
  {
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
  },
  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = true
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { ']t', mode = { 'n' }, function() require('todo-comments').jump_next() end, { desc = 'Next todo comment' } },
      { '[t', mode = { 'n' }, function() require('todo-comments').jump_prev() end, { desc = 'Previous todo comment' } },
    },
    config = true
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    config = function()
      require('nvim-treesitter').setup({
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
  },
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim"
    },
    opts = {},
    cmd = "Trouble",
    keys = {
      { "<leader>e",  "<cmd>Trouble diagnostics toggle<CR>",              desc = "Open trouble workspace diagnostics" },
      { "<leader>ed", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
      { "<leader>eq", "<cmd>Trouble quickfix toggle<CR>",                 desc = "Open trouble quickfix list" },
      { "<leader>el", "<cmd>Trouble loclist toggle<CR>",                  desc = "Open trouble location list" },
      -- { "<leader>wt", "<cmd>Trouble todo toggle<CR>",                     desc = "Open todos in trouble" },
    }
  },
}
