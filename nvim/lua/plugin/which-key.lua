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
    },
    b = {name = 'Buffer Operate'},
    c = {name = 'Code Action'},
    j = {name = 'Java Action'},
    d = {name = 'DAP Action'},
    x = {name = 'Close Current Buffer'},
    m = {name = 'Markdown & Format'},
    r = {name = 'Ranger & Rename & Rest'},
    s = {name = 'Source & Session'},
    t = {name = 'Translate'},
    w = {name = 'Workspace'},
    p = {name = 'Paste to System Clipboard'},
    g = {name = 'Git Action'}
  }, {prefix = '<leader>'})
end
