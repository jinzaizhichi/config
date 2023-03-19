return {
  Lua = {
    runtime = {
      -- LuaJIT in the case of Neovim
      version = 'LuaJIT',
      path = vim.split(package.path, ';'),
    },
    format = {
      defaultConfig = {
        align_array_table = false
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
