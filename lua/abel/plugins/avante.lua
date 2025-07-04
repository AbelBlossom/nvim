return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = "copilot",
    mode = "agentic",
    providers = {
      copilot = {
        model = "claude-3.7-sonnet",
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.nvim", -- for file_selector provider mini.pick
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "zbirenbaum/copilot.lua", -- for providers='copilot'
  },
}
