return {
  "akinsho/nvim-toggleterm.lua",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-]>]],
      direction = "float",
      start_in_insert = true,
      persist_size = true,
      insert_mappings = true,
      terminal_mappings = true,
    })

    local keymap = vim.keymap -- for conciseness
    keymap.set("t", "<C-q>", "<C-\\><C-n>", { noremap = true })
  end,
}
