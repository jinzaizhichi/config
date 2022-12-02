return function()
  require("mason").setup()
  local installed_pkgs = require('mason-registry').get_installed_packages()
  local install_confirm = ''
  if #installed_pkgs == 0 then
    install_confirm = vim.fn.input('No LSP installed yet, install default LSP now (use Mason) ? Y/n = ')
  end

  install_confirm = string.lower(install_confirm)

  if install_confirm == 'y' then
    vim.cmd([[
      MasonInstall
      \ typescript-language-server
      \ dot-language-server
      \ cspell
      \ vim-language-server
      \ emmet-ls
      \ prettier
      \ sqls
      \ python-lsp-server
      \ yaml-language-server
      \ lemminx
      \ luaformatter
      \ lua-language-server
      \ marksman
      \ vetur-vls
      \ jdtls
      \ pyright
      \ bash-language-server
      \ eslint-lsp
      \ eslint-lsp
      \ rust-analyzer
      \ clang-format
      \ clangd
      \ codelldb
      \ cpplint
      \ cpptools
    ]])

  end

  local lsp_status = require('lsp-status')
  lsp_status.config({
    diagnostics = false,
    show_filename = false,
    current_function = false
  })
  lsp_status.register_progress()

  require("mason-lspconfig").setup()
  require("mason-lspconfig").setup_handlers({
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function(server_name) -- default handler (optional)
      if vim.o.diff then
        return
      end

      -- vim.lsp.set_log_level('debug')

      if server_name ~= "jdtls" then
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_extend('keep', capabilities, lsp_status.capabilities)
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
        -- capabilities.textDocument.completion.completionItem.snippetSupport = true
        -- capabilities.textDocument.completion.completionItem.resolveSupport = {
        --   properties = { 'documentation', 'detail', 'additionalTextEdits' }
        -- }
        local config = {
          -- enable snippet support
          capabilities = capabilities,
          -- map buffer local keybindings when the language server attaches
          on_attach = function(client, bufnr)
            require('lsp.common').setup(client, bufnr)
          end
        }

        local settings = 'lsp.' .. server_name .. '.settings'
        if pcall(require, settings) then
          config.settings = require(settings)
        end
        require("lspconfig")[server_name].setup(config)
      else
        -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
        vim.api.nvim_exec([[
          augroup jdtls_lsp
            autocmd!
            autocmd FileType java lua require('lsp.jdtls').setup()
          augroup end
        ]], false)
      end
    end,
    -- -- Next, you can provide targeted overrides for specific servers.
    -- -- For example, a handler override for the `rust_analyzer`:
    -- ["rust_analyzer"] = function ()
    --     require("rust-tools").setup {}
    -- end
    ["groovyls"] = function ()
        require("lspconfig")['groovyls'].setup {
          root_dir = require('lspconfig.util').find_git_ancestor
        }
    end,
    ["clangd"] = function ()
      lsp_status.extensions.clangd.setup()
    end,
    ["pylsp"] = function ()
      lsp_status.extensions.pyls_ms.setup()
    end,

  })
end
