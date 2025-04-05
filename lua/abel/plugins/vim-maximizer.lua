return {
  "szw/vim-maximizer",
  cond = not vim.g.vscode,
  keys = {
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },
}
