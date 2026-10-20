return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local bg   = "#333333"
    local fg   = "#5eacd3"
    local dim  = "#8a8a8a"

    local function mode_theme(mode_color)
      return {
        a = { fg = mode_color, bg = bg, gui = "bold" },
        b = { fg = fg,         bg = bg },
        c = { fg = fg,         bg = bg },
      }
    end

    local theme = {
      normal   = mode_theme(fg),
      insert   = mode_theme("#8ec07c"),
      visual   = mode_theme("#d3869b"),
      replace  = mode_theme("#fb4934"),
      command  = mode_theme("#fabd2f"),
      inactive = { a = { fg = dim, bg = bg }, b = { fg = dim, bg = bg }, c = { fg = dim, bg = bg } },
    }

    return {
      options = {
        theme = theme,
        globalstatus = true,
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "diagnostics", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    }
  end,
}
