return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local todo_comments = require('todo-comments')

    vim.keymap.set('n', ']t', function() todo_comments.jump_next() end, { desc = 'Next todo comment' })
    vim.keymap.set('n', '[t', function() todo_comments.jump_prev() end, { desc = 'Previous todo comment' })
    vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>', { desc = 'Open TODO list' })

    todo_comments.setup()
  end,
}
