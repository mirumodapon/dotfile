local keymap = vim.keymap
vim.g.mapleader = ' '


keymap.set('n', '<leader>s', '<cmd>w<CR>', { desc = 'Save file' })
keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'Close file' })
