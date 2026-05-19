require('nvim-cursorline').setup {
  disable_filetypes = {},

  disable_buftypes = {},

  cursorline = {
    enable  = false,
    timeout = 0,
    number  = false,
  },

  cursorword = {
    enable      = true,
    min_length  = 2,
    hl = { bg = "#440044" },
  }
}
