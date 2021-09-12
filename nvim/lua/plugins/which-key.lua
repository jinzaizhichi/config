return function()
  require('which-key').setup()

  local wk = require('which-key')
  wk.register({
  f = { name = 'Find & Format' },
  b = { name = 'Buffer Operate' },
  c = { name = 'Code Action', j = { name = 'Java Code Action'}},
  d = { name = 'DAP Action' },
  x = { name = 'Close Current Buffer' },
  l = { name = 'List Of Trouble' },
  m = { name = 'Markdown' },
  o = { name = 'Operate Dashboard Action' },
  r = { name = 'Ranger & Rename & Rest' },
  s = { name = 'Session & Spectre Action' },
  t = { name = 'Translate' },
  w = { name = 'Workspace' },
  p = { name = 'Paste System Clipboard' },
  g = { name = 'Git Action' },
}, { prefix = '<leader>' })
end
