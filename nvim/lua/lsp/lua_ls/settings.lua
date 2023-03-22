return {
  Lua = {
    runtime = {
      -- LuaJIT in the case of Neovim
      version = 'LuaJIT',
      path = vim.split(package.path, ';'),
    },
    format = {
      enable = true,
      defaultConfig = {
        indent_style = 'space',
        indent_size = '4',
        quote_style = 'double',
        align_array_table = false,
        align_continuous_assign_statement = false,
        align_continuous_rect_table_field = false
      }
    },
    diagnostics = {
      -- Get the language server to recognize the `vim` global
      globals = { 'vim' },
    },
    workspace = {
      checkThirdParty = false,
      -- Make the server aware of Neovim runtime files
      library = vim.api.nvim_get_runtime_file("", true)
      ,
    },
  }
}
