return function()
  require('gitsigns').setup({
    current_line_blame = true,
    current_line_blame_delay = 500,
  })
end
