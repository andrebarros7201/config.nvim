return {
  'echasnovski/mini.base16',
  version = false,
  priority = 1000,
  lazy = false,
  config = function()
    require('mini.base16').setup { palette = require('mini.base16').mini_palette_dark }
    ---@diagnostic disable-next-line: missing-fields
    vim.cmd 'colorscheme base16-default-dark'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
