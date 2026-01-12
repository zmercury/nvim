-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.cursorline = false
vim.opt.cmdheight = 1

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
