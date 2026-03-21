-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("s", "jk", "<Esc>", { noremap = true, silent = true })
