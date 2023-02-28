return function()
  local default_command = 'google'
  -- if vim.fn.executable('trans') then
  --   default_command = 'translate_shell'
  -- end
  require('translate').setup({
    default = {
      command = default_command
    }
  })
end
