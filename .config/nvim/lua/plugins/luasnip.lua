return {
  'L3MON4D3/LuaSnip',
	build = "make install_jsregexp",
  config = function()
    local ls = require('luasnip')
    require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})
    -- require("luasnip.loaders.from_snipmate").load()
    vim.keymap.set({"i"}, "<C-_>", function() ls.expand() end, {silent = true})
  end
}

