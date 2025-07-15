-- ~/.config/nvim/lua/plugins/dap.lua
return {
  "mfussenegger/nvim-dap",
  dependencies = { "rcarriga/nvim-dap-ui" },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    dapui.setup()

    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

    local keymap = vim.keymap.set
    keymap("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
    keymap("n", "<F5>", dap.continue, { desc = "Continue" })
    keymap("n", "<F10>", dap.step_over, { desc = "Step Over" })
    keymap("n", "<F11>", dap.step_into, { desc = "Step Into" })
    keymap("n", "<F12>", dap.step_out, { desc = "Step Out" })
  end,
}