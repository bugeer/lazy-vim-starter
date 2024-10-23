-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "H")
vim.keymap.del("n", "L")
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")

local uname = (vim.loop or vim.uv).os_uname();

if uname.sysname == "Darwin" then
    vim.keymap.set("n", "<M-h>", "<cmd>bprevious<cr>")
    vim.keymap.set("n", "<M-l>", "<cmd>bnext<cr>")
else
    vim.keymap.set("n", "<A-h>", "<cmd>bprevious<cr>")
    vim.keymap.set("n", "<A-l>", "<cmd>bnext<cr>")
end
