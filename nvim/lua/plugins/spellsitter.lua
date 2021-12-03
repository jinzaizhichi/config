return function()
  require('spellsitter').setup({
    enable = true,
    hl = 'SpellBad',
    captures = {} -- set to {} to spellcheck everything
  })
end
-- also needs to set spell to let it work
