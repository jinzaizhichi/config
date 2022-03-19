return function()
  require('which-key').setup()

  local wk = require('which-key')
  wk.register({
    f = {
      name = 'Find By Telescope',
      i = {name = 'BuildIn & Reloader'},
      m = {name = 'Mark'},
      h = {name = 'History & Help & Highlight'},
      t = {name = 'TreeSitter & FileTypes'},
      w = {name = 'Workspace & LSP Action'},
      s = {name = 'Spectre'},
      d = {name = 'DAP Telescope Action'},
    },
    b = {name = 'Buffer Operate'},
    c = {name = 'Code Action', j = {name = 'Java Code Action'}},
    d = {name = 'DAP Action'},
    x = {name = 'Close Current Buffer'},
    l = {name = 'List Of Trouble'},
    m = {name = 'Markdown & Format'},
    r = {name = 'Ranger & Rename & Rest'},
    s = {name = 'Session Action'},
    t = {name = 'Translate'},
    w = {name = 'Workspace'},
    p = {name = 'Paste System Clipboard'},
    g = {name = 'Git Action'}
  }, {prefix = '<leader>'})
end
