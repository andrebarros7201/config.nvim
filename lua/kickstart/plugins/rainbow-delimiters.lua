return {
  'HiPhish/rainbow-delimiters.nvim',
  config = function()
    vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#b0433e' }) -- base08
    vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg = '#b35c1e' }) -- base09
    vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#c38714' }) -- base0A
    vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#748b23' }) -- base0B
    vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#2f8176' }) -- base0C
    vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#2b6cb3' }) -- base0D
    vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#935178' }) -- base0E

    -- Plugin setup (if using lazy.nvim, packer, etc.)
    require('rainbow-delimiters.setup').setup {
      strategy = {
        [''] = require 'rainbow-delimiters.strategy.global',
      },
      query = {
        [''] = 'rainbow-delimiters',
      },
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterOrange',
        'RainbowDelimiterYellow',
        'RainbowDelimiterGreen',
        'RainbowDelimiterCyan',
        'RainbowDelimiterBlue',
        'RainbowDelimiterViolet',
      },
    }
  end,
}
