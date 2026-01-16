return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- keep your transparent background
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      sidebars = { "qf", "vista_kind", "terminal", "packer" },
      day_brightness = 0.4,
      hide_inactive_statusline = false,
      dim_inactive = true,
      lualine_bold = false,

      -- Gruvbox-like yellowish highlights for selections, search, etc.
      on_colors = function(colors)
        colors.bg = "#282828"
        colors.bg_highlight = "#3c3836"
        colors.base04 = "#282828"
        colors.base03 = "#3c3836"
        colors.base02 = "#504945"
        colors.fg = "#ebdbb2"
      end,

      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        -- gruvbox-ish palette
        local gb_bg0 = "#1d2021"
        local gb_bg1 = "#3c3836"
        local gb_yellow = "#fabd2f"

        -- Visual selection
        highlights.Visual = {
          bg = gb_bg1,
          fg = nil,
        }

        -- Search highlights
        highlights.Search = {
          bg = gb_yellow,
          fg = gb_bg0,
          bold = true,
        }
        highlights.IncSearch = {
          bg = gb_yellow,
          fg = gb_bg0,
          bold = true,
        }
        if highlights.CurSearch then
          highlights.CurSearch = {
            bg = gb_yellow,
            fg = gb_bg0,
            bold = true,
          }
        end

        -- MatchParen
        highlights.MatchParen = {
          bg = gb_bg1,
          bold = true,
        }

        -- CursorLine (subtle darker line)
        highlights.CursorLine = {
          bg = gb_bg1,
        }

        -- Pmenu selection
        highlights.PmenuSel = {
          bg = gb_yellow,
          fg = gb_bg0,
        }
      end,
    },
  },
  -- Configure LazyVim to load solarized-osaka
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
