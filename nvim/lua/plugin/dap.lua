return function()
  local dap = require('dap')
  dap.defaults.fallback.terminal_win_cmd = 'tabnew'
  dap.defaults.fallback.external_terminal = {
    command = '/usr/bin/wezterm';
    args = {'cli', 'spawn'}
  }
end
