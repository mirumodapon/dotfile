return {
  'Bekaboo/deadcolumn.nvim',
  event = 'BufEnter',
  config = function()
    require('deadcolumn').setup()
    vim.opt.colorcolumn = '80,120'
  end
}

