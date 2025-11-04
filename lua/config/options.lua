-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.winbar = "%=%m %f"

vim.g.autoformat     = false
vim.g.snacks_animate = false

vim.opt.scrolloff  = 0
vim.opt.tabstop    = 4
vim.opt.shiftwidth = 4

-- 在Vim中启用折叠
vim.opt.foldmethod = "indent"
vim.opt.foldlevel  = 99

-- vim.opt.fileencodings = { "utf=8", "chinese", "latin-1", "gbk", "gb18030", "gk2312", "cp936" }

vim.opt.listchars = {
  trail    = "┌",
  eol      = "",
  extends  = "↠",
  precedes = "↞",
  tab      = "",
}

-- neovide curse style
vim.opt.guicursor = {
  "n-v-c:block",           -- 普通、可视、命令模式：方块光标
  "i-ci-ve:ver25",         -- 插入、命令行插入、可视选择模式：竖线光标
  "r-cr:hor20",            -- 替换、命令行替换模式：横线光标
  "o:hor50",               -- operator-pending 模式：较粗横线
  "a:blinkwait700-blinkon400-blinkoff250", -- 所有模式光标闪烁样式
  "sm:block-blinkwait175-blinkon150-blinkoff175", -- showmatch 模式光标样式
}

-- !
-- !
-- !󰁍
-- !
-- !
-- !󰞓
