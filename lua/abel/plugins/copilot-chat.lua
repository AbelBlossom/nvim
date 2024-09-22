return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    config = function()
      require("CopilotChat.integrations.cmp").setup()
      require("CopilotChat").setup({
        debug = true,
      })
      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<CR>", { desc = "Toogle Copilot Chat" })
      keymap.set("n", "<leader>cr", "<cmd>CopilotChatReset<CR>", { desc = "Copilot Reset Chat" })
      keymap.set("n", "<leader>cs", "<cmd>CopilotChatStop<CR>", { desc = "Copilot Stop Chat" })
      keymap.set("v", "<leader>ce", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot Explain" })
      keymap.set("n", "<leader>cd", "<cmd>CopilotChatDocs<CR>", { desc = "Copilot Chat Add DocString" })
      keymap.set("v", "<leader>co", "<cmd>CopilotChatOptimize<CR>", { desc = "Copilot Optimize" })
      keymap.set("v", "<leader>cf", "<cmd>CopilotChatFix<CR>", { desc = "Copilot Fix" })
    end,
    -- See Commands section for default commands if you want to lazy load on them
  },
}
