return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  -- opts = {
  --   options = {
  --     mode = "tabs",
  --   },
  -- },
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_tab_indicators = false,
        indicator = {
          style = "none",
        },
        modified_icon = "~",
        color_icons = false,
        numbers = "none",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })
  end,
}
