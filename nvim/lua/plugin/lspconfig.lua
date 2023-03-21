return {
  { 'nvim-lua/lsp-status.nvim' },
  { 'onsails/lspkind.nvim' },
  -- enhancement for jdtls
  { 'mfussenegger/nvim-jdtls' },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
    },
    config = function()
      require("mason").setup()
      local installed_pkgs = require('mason-registry').get_installed_packages()
      local install_confirm = ''
      if #installed_pkgs == 0 then
        install_confirm = vim.fn.input('No package installed yet, install default package now ? (via Mason) Y/n = ')
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
      \ html-lsp
      \ prettier
      \ sqlls
      \ python-lsp-server
      \ yaml-language-server
      \ lemminx
      \ luaformatter
      \ lua-language-server
      \ marksman
      \ vue-language-server
      \ jdtls
      \ google-java-format
      \ pyright
      \ bash-language-server
      \ eslint-lsp
      \ rust-analyzer
      \ clang-format
      \ taplo
      \ clangd
      \ codelldb
      \ cpplint
      \ cpptools
      \ gradle-language-server
      \ glow
    ]])
      end
      local lsp_status = require('lsp-status')
      lsp_status.register_progress();
      lsp_status.config({
        diagnostics = false,
        status_symbol = ''
      })

      local common = require('lsp.common')
      local textdomain = os.getenv('TEXTDOMAIN')
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function(server_name) -- default handler (optional)
          if vim.o.diff or textdomain == 'git' then
            return
          end

          -- vim.lsp.set_log_level('debug')

          if server_name ~= "jdtls" then
            local lsp_config_path = 'lsp.' .. server_name
            local capabilities = common.make_capabilities()
            local config = {
              -- enable snippet support
              capabilities = capabilities,
              -- map buffer local keybindings when the language server attaches
              on_attach = function(client, bufnr)
                common.setup(client, bufnr)
                if pcall(require, lsp_config_path) and require(lsp_config_path).attach ~= nil then
                  require(lsp_config_path).attach(client, bufnr)
                end
              end
            }

            local settings = lsp_config_path .. '.settings'
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
        ["groovyls"] = function()
          require("lspconfig").groovyls.setup {
            root_dir = require('lspconfig.util').find_git_ancestor
          }
        end,
      })
    end
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      local null_ls = require('null-ls')
      local perfer_local = vim.fn.stdpath('data') .. '/mason/bin'
      local home = os.getenv('HOME')
      null_ls.setup({
        -- log = {
        --   enable = true,
        --   level = "trace",
        --   use_console = "async",
        -- },
        sources = {
          -- null_ls.builtins.code_actions.gitsigns,
          -- null_ls.builtins.completion.spell,
          -- NOTE: cspell needs to installed first by using npm install -g cspell
          null_ls.builtins.diagnostics.cspell.with {
            prefer_local = perfer_local,
            diagnostics_postprocess = function(diagnostic)
              diagnostic.severity = diagnostic.message:find("Unknown word")
                  and vim.diagnostic.severity["INFO"]
            end,
          },
          null_ls.builtins.code_actions.cspell.with {
            config = {
              find_json = function(params)
                return home .. "/.cspell.json"
              end,
            },
          },
          -- null_ls.builtins.diagnostics.codespell,
          -- null_ls.builtins.diagnostics.semgrep.with{
          --   prefer_local = perfer_local,
          --   extra_args = { "--config", "auto" },
          -- },
          null_ls.builtins.formatting.nginx_beautifier,
          null_ls.builtins.formatting.prettier.with {
            prefer_local = perfer_local,
            condition = function(utils)
              return utils.has_file({ ".prettierrc.js" })
            end,
          },
          null_ls.builtins.formatting.sqlformat,
          null_ls.builtins.formatting.stylelint,
          -- null_ls.builtins.formatting.codespell,
          null_ls.builtins.hover.dictionary,
        }
      })
    end
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require("project_nvim").setup({
        -- All the patterns used to detect root dir, when **"pattern"** is in
        detection_methods = { "lsp", "pattern" },
        -- detection_methods
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
        -- Show hidden files in telescope
        show_hidden = true,
        silent_chdir = false,
      })
    end
  }
}
