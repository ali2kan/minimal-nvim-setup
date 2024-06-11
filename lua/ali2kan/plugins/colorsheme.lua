return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    -- local bg = "#011628"
    -- local bg_dark = "#011423"
    -- local bg_highlight = "#143652"
    -- local bg_search = "#0A64AC"
    -- local bg_visual = "#275378"
    -- local fg = "#CBE0F0"
    -- local fg_dark = "#B4D0E9"
    -- local fg_gutter = "#627E97"
    -- local border = "#547998"
    --
    -- require("tokyonight").setup({
    --   style = "night",
    --   on_colors = function(colors)
    --     ---@diagnostic disable-next-line: inject-field
    --     colors.bg = bg
    --     colors.bg_dark = bg_dark
    --     colors.bg_float = bg_dark
    --     colors.bg_highlight = bg_highlight
    --     colors.bg_popup = bg_dark
    --     colors.bg_search = bg_search
    --     colors.bg_sidebar = bg_dark
    --     colors.bg_statusline = bg_dark
    --     colors.bg_visual = bg_visual
    --     colors.border = border
    --     colors.fg = fg
    --     colors.fg_dark = fg_dark
    --     colors.fg_float = fg
    --     colors.fg_gutter = fg_gutter
    --     colors.fg_sidebar = fg_dark
    --   end,
    -- })
    -- load the colorscheme here
    config = function()
      require("tokyonight").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows
        on_colors = function(colors)
          -- colors.bg = "#000000"
          colors.bg = "#FF69B4"
          colors.bg_dark = "#1C1C1C"
          colors.bg_highlight = "#282828"
          colors.bg_search = "#FFD700"
          colors.bg_visual = "#444444"
          colors.fg = "#FFFFFF"
          colors.fg_dark = "#CCCCCC"
          colors.fg_gutter = "#444444"
          colors.border = "#FFA500"
          colors.orange = "#FFA500"
        end,
        on_highlights = function(highlights, colors)
          highlights.Normal = { bg = colors.bg, fg = colors.fg }
          highlights.Comment = { fg = colors.fg_gutter, italic = true }
          highlights.Keyword = { fg = colors.orange, italic = true }
          highlights.Identifier = { fg = colors.orange }
          highlights.String = { fg = colors.bg_search }
          highlights.Visual = { bg = colors.bg_visual }
        end,
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
