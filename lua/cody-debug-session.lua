local M = {}

local group = vim.api.nvim_create_augroup("cody-debug-session", {})

local enabled = false

M.enable = function()
  enabled = true
  vim.api.nvim_clear_autocmds { group = group }
  print ("help on the way")
--  vim.api.nvim_create_autocmd("EnterDebugSession", {
--    group = group,
--    callback = function()
--      if enabled then
--        print ("hello")
--      end
--  end})
end

M.disable = function()
  enabled = false
  vim.api.nvim_clear_autocmds { group = group }
end

M.toggle = function(val)
  if val == nil then
    return M.toggle(not enabled)
  end

  if val then
    M.enable()
  else
    M.disable()
  end
end

return M
