-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Exit insert mode with jk
vim.keymap.set("i", "kk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "kk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("s", "kk", "<Esc>", { noremap = true, silent = true })
