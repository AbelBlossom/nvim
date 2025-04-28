return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  cond = not vim.g.vscode,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    if vim.fn.has("termguicolors") == 1 then
      vim.opt.termguicolors = true
    end

    local function load_theme()
      local theme = vim.fn.system("defaults read -g AppleInterfaceStyle")
      if string.match(theme, "Dark") then
        vim.opt.background = "dark"
      else
        vim.opt.background = "light"
      end
    end

    load_theme()

    vim.g.gruvbox_material_background = "hard"

    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_dim_inactive_windows = 0
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_disable_italic_comment = 0

    vim.cmd.colorscheme("gruvbox-material")

    vim.api.nvim_create_user_command("LoadTheme", function()
      load_theme()
      vim.notify("Theme updated based on system appearance", vim.log.levels.INFO)
    end, {})
  end,
}
