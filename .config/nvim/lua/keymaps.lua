vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', '<leader>t', '<cmd>NvimTreeFocus<CR>', { desc = 'Open explore' })
keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle explore' })
keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh explore' })

keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Open files finder' })
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
keymap.set('n', '<leader>fs', '<cmd>Telescope grep_string<CR>', { desc = 'Grep string under cursor' })
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'Open buffer list' })
keymap.set('n', '<leader>fr', '<cmd>Telescope registers<CR>', { desc = 'Open registers list' })
keymap.set('n', '<leader>fm', '<cmd>Telescope marks<CR>', { desc = 'Open marks list' })
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'Open telescope help' })
keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>', { desc = 'Open TODO list' })

keymap.set('n', '<leader>s', '<cmd>w<CR>', { desc = 'Save file' })
keymap.set('n', '<leader>S', '<cmd>wq<CR>', { desc = 'Save file and quit' })

keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'Close file' })
keymap.set('n', '<leader>Q', '<cmd>q!<CR>', { desc = 'Force close file even unsave' })

keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>', { desc = 'Restore saving session' })
keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>', { desc = 'Save ssession' })

keymap.set('n', '<leader> e', '<cmd>Trouble diagnostics toggle<CR>', { desc = 'Open trouble workspace diagnostics' })
keymap.set('n', '<leader> t', '<cmd>Open todos in trouble<CR>', { desc = 'Open todos in trouble' })

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = 'Open git control pane' })
