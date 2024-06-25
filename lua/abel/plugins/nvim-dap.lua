return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    require("dap-go").setup()
    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
    vim.keymap.set('n', '<Leader>dc', dap.continue, { desc = "Continue" })
    vim.keymap.set('n', '<Leader>du', dapui.open, { desc = "Open Dap UI" })
    vim.keymap.set('n', '<Leader>dx', dapui.close, { desc = "Close Dap UI" })
  end
}
