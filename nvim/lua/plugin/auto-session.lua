return function()
  require('auto-session').setup({
    bypass_session_save_file_types = { 'alpha', 'dashboard' },
    auto_session_suppress_dirs = { '~/', '/', '~/Desktop/', '~/Music/', '~/Public/', '~/Videos/', '~/Pictures/',
      '~/project/', '~/Documents/', '~/Downloads/', '~/Templates/' },
    auto_restore_enabled = false,
    auto_session_use_git_branch = true
  })
end
