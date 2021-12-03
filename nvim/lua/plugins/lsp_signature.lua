return function ()
  require('lsp_signature').setup({
    handler_opts = {
      border = 'none'   -- double, single, shadow, none
    },
    always_trigger = false,
    floating_window = false,
    hint_enable = true,
    hint_prefix = " ",
    toggle_key = '<M-s>'
  })
end
