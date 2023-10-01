vim.api.nvim_create_user_command("CodyDebugSessionToggle", function ()
  require("cody-debug-session").toggle()
end, {})

vim.api.nvim_create_user_command("CodyDebugSessionEnable", function ()
  require("cody-debug-session").toggle(true)
end, {})

vim.api.nvim_create_user_command("CodyDebugSessionDisable", function ()
  require("cody-debug-session").toggle(false)
end, {})
