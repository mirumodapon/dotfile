return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      numbers = "ordined",
      separator_style = "thin",
      diagnostics = 'nvim_lsp',
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Exploreer',
          text_align = 'left',
          separator = true
        }
      }
    }
  }
}
