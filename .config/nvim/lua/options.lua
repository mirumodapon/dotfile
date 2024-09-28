local opt = vim.opt

-- tabs and indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.relativenumber = true
opt.number = true
opt.expandtab = true
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- style
opt.cursorline = true
opt.termguicolors = true

-- clipborad
opt.clipboard:append('unnamedplus')

-- feature
opt.wildmenu = true
opt.mouse = 'a'
opt.splitright = true
opt.colorcolumn="80,120"
