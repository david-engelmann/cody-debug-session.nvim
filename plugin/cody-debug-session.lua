vim.api.nvim_create_user_command("CodyDebugSessionToggle", function ()
  require("cody-debug-session").toggle()
end, {})


