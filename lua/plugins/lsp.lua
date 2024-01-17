return {
  -- add symbols-outline
  {
    "bugeer/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>o", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
      autofold_depth = 1,
    },
  },
}
