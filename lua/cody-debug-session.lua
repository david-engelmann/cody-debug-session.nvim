local M = {}

local group = vim.api.nvim_create_augroup("cody-debug-session", {})

local enabled = false

M.enable = function()
  enabled = true
  vim.api.nvim_clear_autocmds { group = group }
  vim.api.nvim_create_autocmd("EnterDebugSession", {
    group = group,
    callback = function()
      if enabled then
        print ("hello")
      end
    end,})
  end

return M
