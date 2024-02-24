return {
  { "christoomey/vim-tmux-navigator" },
  -- {
  --   "rcarriga/nvim-notify",
  --   enabled = false,
  -- },
  --
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Dismiss all Notifications",
      },
    },
    opts = {
      timeout = 2000,
      level = 1,
      fps = 5,
      render = "compact",
      stages = "static",
      max_height = function()
        return math.floor(vim.o.lines * 0.25)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.25)
      end,
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { zindex = 100 })
      end,
    },
  },
}
