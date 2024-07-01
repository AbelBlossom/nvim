-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup({
--       style = "storm",
--       transparent = true,
--       terminal_colors = true,
--       on_colors = function() end,
--       on_highlights = function() end,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     })
--
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }

-- gruvbox
return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = false,
        emphasis = true,
        comments = false,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    })

    vim.cmd("colorscheme gruvbox")
  end,
}
