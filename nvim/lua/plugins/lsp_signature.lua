return function ()
  require('lsp_signature').setup({
    handler_opts = {
      border = 'none'   -- double, single, shadow, none
    },
    toggle_key = '<M-s>'
  })
end