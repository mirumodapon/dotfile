vim.g.mapleader = ' '
local keymap = vim.keymap


vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', '<leader>s', '<cmd>w<CR>', { desc = 'Save file' })
keymap.set('n', '<leader>S', '<cmd>wq<CR>', { desc = 'Save file and quit' })

keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'Close file' })
keymap.set('n', '<leader>Q', '<cmd>q!<CR>', { desc = 'Force close file even unsave' })
