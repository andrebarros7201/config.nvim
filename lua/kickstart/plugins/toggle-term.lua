return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()

    -- Terminal with lazygit
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new {
      cmd = 'lazygit',
      hidden = true,
      direction = 'float',
      float_opts = {
        border = 'single',
      },
      close_on_exit = false,
    }

    vim.keymap.set('n', '<leader>gg', function()
      lazygit:toggle()
    end, { noremap = true, silent = true, desc = 'Toggle lazygit' })

    -- Terminal with powershell
    local bash_term = Terminal:new {
      cmd = 'pwsh',
      direction = 'float',
      hidden = true,
      close_on_exit = false,
      float_opts = {
        border = 'single',
      },
      start_in_insert = true,
    }

    vim.keymap.set('n', '<leader>sh', function()
      bash_term:toggle()
    end, { noremap = true, silent = true, desc = 'Toggle powershell terminal' })
  end,
}
