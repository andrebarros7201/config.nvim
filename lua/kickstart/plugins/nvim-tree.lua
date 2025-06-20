return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set({ 'n', 'v' }, '<leader>e', vim.cmd.NvimTreeToggle)
    require('nvim-tree').setup({})
  end,
}
