local leet_arg = "leetcode.nvim"
return {
  {
    "kawre/leetcode.nvim",
    lazy = leet_arg ~= vim.fn.argv()[1],
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
      ---@type string
      arg = leet_arg,

      ---@type lc.lang
      lang = "python3",

      cn = { -- leetcode.cn
        enabled = true, ---@type boolean
        translator = false, ---@type boolean
        translate_problems = false, ---@type boolean
      },
    },
    keys = {
      { "<leader>lm", "<cmd>Leet menu<cr>", desc = "Leetcode menu" },
      { "<leader>lc", "<cmd>Leet console<cr>", desc = "Leetcode console" },
      { "<leader>li", "<cmd>Leet info<cr>", desc = "Leetcode info" },
      { "<leader>l<tabs>", "<cmd>Leet tabs<cr>", desc = "Leetcode tabs" },
      { "<leader>ly", "<cmd>Leet yank<cr>", desc = "Leetcode yank" },
      { "<leader>la", "<cmd>Leet lang<cr>", desc = "Leetcode lang" },
      { "<leader>l<cr>", "<cmd>Leet run<cr>", desc = "Leetcode run" },
      { "<leader>ls", "<cmd>Leet submit<cr>", desc = "Leetcode submit" },
      { "<leader>ll", "<cmd>Leet list<cr>", desc = "Leetcode list" },
      { "<leader>lo", "<cmd>Leet open<cr>", desc = "Leetcode open" },
      { "<leader>lr", "<cmd>Leet reset<cr>", desc = "Leetcode reset" },
      { "<leader>lt", "<cmd>Leet last_submit<cr>", desc = "Leetcode last_submit" },
      { "<leader>ld", "<cmd>Leet desc<cr>", desc = "Leetcode desc" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>l"] = { name = "+leetcode" },
      },
    },
  },
}
