-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "H")
vim.keymap.del("n", "L")
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")
vim.keymap.set("n", "<A-h>", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<A-l>", "<cmd>bnext<cr>")
