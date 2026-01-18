-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Use <leader>e for netrw instead of Snacks explorer
-- This opens the netrw explorer for the current directory
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "File Explorer (netrw)" })
vim.keymap.set("n", "<C-k>", "<C-u>", { desc = "Up" })
vim.keymap.set("n", "<C-j>", "<C-d>", { desc = "Down" })
vim.keymap.set("n", "$$", "$A")
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })
