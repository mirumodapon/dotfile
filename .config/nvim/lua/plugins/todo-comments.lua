return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local todo_comments = require('todo-comments')
    -- TODO:
    vim.keymap.set('n', ']t', function() todo_comments.jump_next() end, { desc = 'Next todo comment' })
    vim.keymap.set('n', '[t', function() todo_comments.jump_prev() end, { desc = 'Previous todo comment' })

    todo_comments.setup()

  end,
}
