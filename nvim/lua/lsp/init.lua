local M = {}

function M.setup()
  local lsp_installer = require("nvim-lsp-installer")
  lsp_installer.settings {
    log_level = vim.log.levels.DEBUG,
  }

  lsp_installer.on_server_ready(function(server)
    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end
    -- config that activates keymaps and enables snippet support
    -- keymaps & options
    local function on_attach(client, bufnr)
      require('lsp.common').setup(client, bufnr)
    end
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
    local config = make_config()

    local settings = 'lsp.' .. server.name .. '.settings'
    if pcall(require, settings) then
      config.settings = require(settings)
    end
    -- language specific config
    --[[ if server == "sourcekit" then
      config.filetypes = {"swift", "objective-c", "objective-cpp"}; -- we don't want c and cpp!
    end
    if server == "clangd" then
      config.filetypes = {"c", "cpp"}; -- we don't want objective-c and objective-cpp!
    end ]]
    -- java lsp setting is specific by nvim-jdtls
    if server.name ~= "jdtls" then
      -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
      server:setup(config)
    else
      -- jdtls special operator
      vim.api.nvim_exec([[
      augroup jdtls_lsp
        autocmd!
        autocmd FileType java lua require('lsp.jdtls').setup()
      augroup end
    ]], false)
    end

    vim.cmd [[ do User LspAttachBuffers ]]
  end)
end

return M
