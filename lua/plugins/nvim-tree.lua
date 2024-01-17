return {
  -- Change default permissions for files created via Neo-tree
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- filtered_items = {
      --   hide_dotfiles = false,
      --   hide_gitignored = false,
      -- },
      commands = {
        open_nofocus = function(state)
          require("neo-tree.sources.filesystem.commands").open(state)
          vim.schedule(function()
            vim.cmd([[Neotree focus]])
          end)
        end,
      },
    },
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
      },
    },
    event_handlers = {
      --[[ change default permissions of newly created files ]]
      {
        event = "file_added",
        handler = function(destination)
          local uv = vim.loop
          local file_info = uv.fs_stat(destination)
          if not file_info then
            return
          elseif file_info.type == "file" then
            uv.fs_chmod(destination, 436) -- (436 base 10) == (664 base 8)
          elseif file_info.type == "directory" then
            uv.fs_chmod(destination, 509) -- 644 does not work for directories I guess?
          end
        end,
      },

      --[[ read skel template for newly created files under `/plugins/extras/lang/` ]]
      {
        event = "file_added",
        handler = function(destination)
          local file_info = vim.loop.fs_stat(destination)
          if
            file_info
            and file_info.type == "file"
            and vim.fn.fnamemodify(destination, ":h") == "/home/jrn23/.config/nvim/lua/plugins/extras/lang"
          then
            vim.cmd.edit(destination)
            vim.schedule(function()
              vim.api.nvim_input("<cmd>0r /home/jrn23/.config/nvim/lua/plugins/extras/lang/lang.skel<CR>")
            end)
          end
        end,
      },
    },
  },
}
