return {
  { "christoomey/vim-tmux-navigator" },
  -- {
  --   "rcarriga/nvim-notify",
  --   enabled = false,
  -- },
  --
  -- Lazy.nvim
  -- {
  --   "hiasr/vim-zellij-navigator.nvim",
  --   config = function()
  --     require("vim-zellij-navigator").setup()
  --   end,
  -- },
  -- {
  --   "swaits/zellij-nav.nvim",
  --   lazy = true,
  --   event = "VeryLazy",
  --   keys = {
  --     { "<c-h>", "<cmd>ZellijNavigateLeft<cr>", { silent = true, desc = "navigate left or tab" } },
  --     { "<c-j>", "<cmd>ZellijNavigateDown<cr>", { silent = true, desc = "navigate down" } },
  --     { "<c-k>", "<cmd>ZellijNavigateUp<cr>", { silent = true, desc = "navigate up" } },
  --     { "<c-l>", "<cmd>ZellijNavigateRight<cr>", { silent = true, desc = "navigate right or tab" } },
  --   },
  --   opts = {},
  -- },
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
