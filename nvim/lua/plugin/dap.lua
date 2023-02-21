return function()
  local dap = require('dap')
  dap.defaults.fallback.terminal_win_cmd = 'tabnew'
end
