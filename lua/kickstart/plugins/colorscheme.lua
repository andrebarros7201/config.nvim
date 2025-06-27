return {
  'nuvic/flexoki-nvim',
  priority = 1000,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('flexoki').setup {
      variant = 'auto', -- moon, or dawn
      dim_inactive_windows = false,
      extend_background_behind_borders = false,

      enable = {
        terminal = false,
      },

      styles = {
        bold = true,
        italic = false,
      },

      groups = {
        border = 'muted',
        link = 'purple_two',
        panel = 'base',

        error = 'red_one',
        hint = 'purple_one',
        info = 'cyan_one',
        ok = 'green_one',
        warn = 'orange_one',
        note = 'blue_one',
        todo = 'magenta_one',

        git_add = 'green_one',
        git_change = 'yellow_one',
        git_delete = 'red_one',
        git_dirty = 'yellow_one',
        git_ignore = 'muted',
        git_merge = 'purple_one',
        git_rename = 'blue_one',
        git_stage = 'purple_one',
        git_text = 'magenta_one',
        git_untracked = 'subtle',

        h1 = 'purple_two',
        h2 = 'cyan_two',
        h3 = 'magenta_two',
        h4 = 'orange_two',
        h5 = 'blue_two',
        h6 = 'cyan_two',
      },

      palette = {
        -- Override the builtin palette per variant
      },

      highlight_groups = {
        -- Comment = { fg = "subtle" },
        -- VertSplit = { fg = "muted", bg = "muted" },
      },

      before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.blue_two then
        --     highlight.fg = palette.cyan_two
        -- end
      end,
    }

    vim.cmd 'colorscheme flexoki-moon'
    -- vim.cmd("colorscheme flexoki-dawn")
  end,
}
-- vim: ts=2 sts=2 sw=2 et
