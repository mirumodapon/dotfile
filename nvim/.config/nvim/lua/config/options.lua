local opt = vim.opt

-------------------------------------------------
-- Indent

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-------------------------------------------------
-- Line numbers

opt.relativenumber = true
opt.number = true

-------------------------------------------------
-- Wrapping

opt.wrap = false

-------------------------------------------------
-- Search

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-------------------------------------------------
-- UI

opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 4
opt.sidescrolloff = 4
opt.list = true
opt.listchars = {
  tab = "» ",
  trail = "·",
  extends = "›",
  precedes = "‹",
  nbsp = "␣",
}

-------------------------------------------------
-- Window split

opt.splitright = true
opt.splitbelow = true

-------------------------------------------------
-- Completion

opt.wildmenu = true

-------------------------------------------------
-- Performance

opt.updatetime = 250
opt.timeoutlen = 400

-------------------------------------------------
-- Clipboard

opt.clipboard:append("unnamedplus")

-------------------------------------------------
-- Folding

opt.foldenable = false

-------------------------------------------------
-- Diagnostics

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

