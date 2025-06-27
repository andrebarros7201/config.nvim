return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local function folder_and_file()
      local path = vim.fn.expand '%:~:.'
      return path ~= '' and path or '[No Name]'
    end
    require('lualine').setup {
      options = {
        theme = 'flexoki',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { folder_and_file },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}
