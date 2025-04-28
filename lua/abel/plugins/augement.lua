return {
  "augmentcode/augment.vim",
  cond = not vim.g.vscode,
  config = function()
    -- add keybindings to open the augment nvim
    vim.keymap.set({ "n", "v" }, "<leader>aa", "<cmd>Augment chat-toggle<cr>", { desc = "Toggle Augment" })
    vim.keymap.set("n", "<leader>an", "<cmd>Augment chat-new<cr>", { desc = "New Augment Chat" })
    vim.keymap.set({ "n", "v" }, "<leader>ac", "<cmd>Augment chat<cr>", { desc = "Open Augment" })
  end,
}
