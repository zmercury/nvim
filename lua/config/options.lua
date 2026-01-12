-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.cursorline = false
vim.opt.cmdheight = 1
vim.g.netrw_banner = 0 -- hide the top banner
vim.g.netrw_liststyle = 0 -- tree view
vim.g.netrw_browse_split = 0 -- open files in the same window
vim.g.netrw_altv = 1 -- open splits to the right
vim.g.netrw_winsize = 25 -- width of netrw window

-- netrw custom colors
vim.api.nvim_set_hl(0, "netrwDir", { fg = "#c97c41" })
vim.api.nvim_set_hl(0, "netrwPlain", { fg = "#a89984" })

-- LazyVim / plugins may set cmdheight=0 when using Noice.
-- Force the classic bottom cmdline back *after* Lazy has finished (User VeryLazy).
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    -- schedule so this runs after any other VeryLazy handlers
    vim.schedule(function()
      vim.o.cmdheight = 1
    end)
  end,
})
