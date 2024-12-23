return {
  {
    "danymat/neogen",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("neogen").setup({
        enabled = true, -- 启用插件
        languages = {
          typescript = {
            template = {
              annotation_convention = "tsdoc", -- 使用 TSDoc 风格
            },
          },
          lua = {
            template = {
              annotation_convention = "ldoc", -- 使用 LDoc 风格
            },
          },
          javascript = {
            template = {
              annotation_convention = "jsdoc", -- 使用 JSDoc 风格
            },
          },
        },
      })
    end,
    keys = {
      { "<leader>nc", ":Neogen<CR>", desc = "Generate Documentation" }, -- 快捷键绑定
    },
  },
}

