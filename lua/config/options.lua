-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.winbar = "%=%m %f"

vim.g.autoformat = false

vim.opt.scrolloff  = 2
vim.opt.tabstop    = 4
vim.opt.shiftwidth = 4

-- 在Vim中启用折叠
vim.opt.foldmethod = "indent"
vim.opt.foldlevel  = 99

vim.opt.listchars = {
  trail    = "┌",
  eol      = "",
  extends  = "↠",
  precedes = "↞",
  tab      = "",

}

-- !
-- !
-- !󰁍
-- !
-- !
-- !󰞓
