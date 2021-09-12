return function ()
  require('auto-session').setup({
    post_restore_cmds = {'so $MYVIMRC'}, -- fresh config after session restore
    log_level = 'info',
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
  })
end
