return {
  {
    'cpplain/flexoki.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('flexoki').setup {
        plugins = {
          'gitsigns',
          'nvim_treesitter_context',
        },
      }
      vim.cmd.colorscheme 'flexoki'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
