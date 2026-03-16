return {
  -- Includes:
  -- + goolord/alpha-nvim
  -- + nvim-tree/nvim-tree.lua
  -- + hedyhli/outline.nvim
  -- + nvim-tree/nvim-tree.lua
  -- + utilyre/barbecue.nvim
  -- + akinsho/bufferline.nvim
  -- + stevearc/dressing.nvim
  -- + nvim-lualine/lualine.nvim
  -- + folke/noice.nvim
  -- + rcarriga/nvim-notify
  -- + petertriho/nvim-scrollbar
  {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      { '<leader>t', mode = { 'n' }, '<cmd>NvimTreeFocus<CR>', desc = 'Open explore' },
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require('nvim-tree').setup({
        view = {
          width = 35,
          relativenumber = true,
        },
        renderer = {
          indent_markers = {
            enable = true,
          }
        },
        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { '.DS_Store' },
        },
        git = {
          ignore = false,
        },
      })
    end,
  },
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      dashboard.section.header.val = {
        '███╗   ███╗██╗██████╗ ██╗   ██╗███╗   ███╗ ██████╗ ',
        '████╗ ████║██║██╔══██╗██║   ██║████╗ ████║██╔═══██╗',
        '██╔████╔██║██║██████╔╝██║   ██║██╔████╔██║██║   ██║',
        '██║╚██╔╝██║██║██╔══██╗██║   ██║██║╚██╔╝██║██║   ██║',
        '██║ ╚═╝ ██║██║██║  ██║╚██████╔╝██║ ╚═╝ ██║╚██████╔╝',
        '╚═╝     ╚═╝╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝ '
      }

      dashboard.section.buttons.val = {
        dashboard.button('e', '  > New File', '<cmd>ene<CR>'),
        dashboard.button('SPC t', '  > Toggle file explorer', '<cmd>NvimTreeToggle<CR>'),
        dashboard.button('SPC ff', '󰱽  > Find File', '<cmd>Telescope find_files<CR>'),
        dashboard.button('SPC fs', '  > Find Word', '<cmd>Telescope live_grep<CR>'),
        dashboard.button('SPC ft', '> > Open TODO List', '<cmd>TodoTelescope<CR>'),
        dashboard.button('SPC gg', '  > Open Git Control Pane', '<cmd>Neogit<CR>'),
        dashboard.button('q', '󰈆  > Quit NVIM', '<cmd>qa<CR>')
      }

      alpha.setup(dashboard.opts)
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
  },
  {
    'utilyre/barbecue.nvim',
    dependencies = {
      'catppuccin/nvim',
      'SmiteshP/nvim-navic',
    },
    opts = {
      theme = 'catppuccin',
    },
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = {
      options = {
        mode = 'tabs',
        numbers = 'ordined',
        separator_style = 'thin',
        diagnostics = 'nvim_lsp',
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            text_align = 'left',
            sparator = true
          },
        },
      },
    },
  },
  {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'catppuccin/nvim'
    },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto'
        }
      })
    end,
  },
  {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    config = function()
      require("noice").setup({
        messages = {
          enabled = false
        }
      })
    end
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      local notify = require("notify")

      notify.setup({
        background_colour = "#000000",
        top_down = false
      })

      vim.notify = notify
    end
  },
  {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup({
        show = true
      })
    end
  },
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    config = true,
    keys = {
      { '<leader>o', mode = { 'n' }, '<cmd>OutlineOpen<CR>', desc = 'Open outline pane' },
    },
  },
}
