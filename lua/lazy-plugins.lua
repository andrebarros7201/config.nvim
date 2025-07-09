require('lazy').setup {
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
  require 'kickstart.plugins.gitsigns',
  require 'kickstart.plugins.telescope',
  require 'kickstart.plugins.lspconfig',
  require 'kickstart.plugins.conform',
  require 'kickstart.plugins.icons',
  require 'kickstart.plugins.mini',
  require 'kickstart.plugins.treesitter',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.nvim-tree',
  require 'kickstart.plugins.auto-tag',
  require 'kickstart.plugins.rainbow-delimiters',
  require 'kickstart.plugins.ts-autotag',
  require 'kickstart.plugins.tailwindcss-colorizer-cmp',
  require 'kickstart.plugins.blink-cmp',
}

-- vim: ts=2 sts=2 sw=2 et
