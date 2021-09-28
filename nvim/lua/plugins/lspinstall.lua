return function()
  local M = {}

  -- keymaps & options
  local on_attach = function(client, bufnr)
    require('lsp.common').setup(client, bufnr)
  end

  -- Configure lua language server for neovim development

  -- config that activates keymaps and enables snippet support
  local function make_config()
    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {'documentation', 'detail', 'additionalTextEdits'}
    }
    return {
      -- enable snippet support
      capabilities = capabilities,
      -- map buffer local keybindings when the language server attaches
      on_attach = on_attach
    }
  end

  -- lsp-install
  M.setup_servers = function()
    require'lspinstall'.setup()

    -- get all installed servers
    local servers = require'lspinstall'.installed_servers()
    -- ... and add manually installed servers
    table.insert(servers, "clangd")
    table.insert(servers, "sourcekit")

    for _, server in pairs(servers) do
      local config = make_config()

      -- language specific config
      if server == "lua" then config.settings = require('lsp.lua.settings') end
      if server == "sourcekit" then
        config.filetypes = {"swift", "objective-c", "objective-cpp"}; -- we don't want c and cpp!
      end
      if server == "clangd" then
        config.filetypes = {"c", "cpp"}; -- we don't want objective-c and objective-cpp!
      end
      -- java lsp setting is specific by nvim-jdtls
      if server ~= "java" then
        require'lspconfig'[server].setup(config)
      else
        vim.api.nvim_exec([[
        augroup jdtls_lsp
          autocmd!
          autocmd FileType java lua require('lsp.java.jdtls').setup()
        augroup end
      ]], false)
      end
    end
  end
  M.setup_servers()
  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  require('lspinstall').post_install_hook = function()
    M.setup_servers() -- reload installed servers
    vim.cmd('bufdo e') -- this triggers the FileType autocmd that starts the server
  end
end
