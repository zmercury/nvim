return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = "gruvbox"

      opts.sections.lualine_z = {
        function()
          return os.date("%I:%M %p") -- 12-hour format with AM/PM
        end,
      }
    end,
  },
}
