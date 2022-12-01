return function()
  require('nvim-navic').setup({
    depth_limit = 100,
    depth_limit_indicator = '…'
  })
end
