return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  cond = not vim.g.vscode,
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup({})

    local conf = require("telescope.config").values

    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "Add current buffer to harpoon list" })

    -- Toggle previous & next buffers stored within Harpoon list
    -- vim.keymap.set("n", "hp", function()
    --   harpoon:list():prev()
    -- end)
    --
    -- vim.keymap.set("n", "hn", function()
    --   harpoon:list():next()
    -- end)
  end,
}
