local M = {}

function M.setup()
  local on_attach = function(client, bufnr)
    -- require'jdtls'.setup_dap({hotcodereplace = 'auto'})
  local dap = require('dap')
  local util = require('jdtls.util')


  dap.adapters.java = function(callback)
    util.execute_command({command = 'vscode.java.startDebugSession'}, function(err0, port)
      assert(not err0, vim.inspect(err0))
      -- print("puerto:", port)
      callback({
        type = 'server';
        host = '127.0.0.1';
        port = port;
      })
    end)
  end

  local project_name = os.getenv('PROJECT_NAME')
  if project_name then
    dap.configurations.java = {
      {
        type = 'java',
        request = 'attach',
        projectName = project_name or nil,
        name = "Java attach",
        hostName = "127.0.0.1",
        port = 5005
      },
    }
  end
    require('jdtls').setup_dap()
    require('jdtls.dap').setup_dap_main_class_configs()
    require('jdtls.setup').add_commands()
    local common = require('lsp.common')
    common.setup(client, bufnr)
    local opts = common.opts
    common.set_keymap(bufnr, 'n', '<leader>co', "<Cmd>lua require('jdtls').organize_imports()<CR>", opts)
    common.set_keymap(bufnr, 'n', '<leader>cv', "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
    common.set_keymap(bufnr, 'v', '<leader>cv', "<Cmd>lua require('jdtls').extract_variable(true)<CR>", opts)
    common.set_keymap(bufnr, 'n', '<leader>cc', "<Cmd>lua require('jdtls').extract_constant()<CR>", opts)
    common.set_keymap(bufnr, 'v', '<leader>cc', "<Cmd>lua require('jdtls').extract_constant(true)<CR>", opts)
    common.set_keymap(bufnr, 'v', '<leader>cm', "<Cmd>lua require('jdtls').extract_method(true)<CR>", opts)
    -- If using nvim-dap
    -- This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
    common.set_keymap(bufnr, 'n', '<leader>da', "<Cmd>lua require('jdtls').test_class()<CR>", opts)
    common.set_keymap(bufnr, 'n', '<leader>dn', "<Cmd>lua require('jdtls').test_nearest_method()<CR>", opts)
  end

  local lsp_status = require('lsp-status')
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  capabilities = vim.tbl_extend('keep', capabilities, lsp_status.capabilities)
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  local root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
  local workspace_name, _ = string.gsub(vim.fn.fnamemodify(root_dir, ":p"), "/", "_")
  local jdtls_path = vim.fn.stdpath('data') .. '/mason/packages/jdtls'
  local config_path = vim.fn.stdpath('config') .. '/lua/lsp/jdtls'

  local bundles = {
    vim.fn.glob(config_path ..  '/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar')
  }
  vim.list_extend(bundles, vim.split(vim.fn.glob(config_path .. '/vscode-java-test/server/*.jar'), '\n'))
  vim.list_extend(bundles, vim.split(vim.fn.glob(config_path ..  '/vscode-java-decompiler/server/*.jar'), '\n'))

  local jdtls_java_home = os.getenv('JDTLS_JAVA_HOME')
  local java_cmd = 'java'
  if jdtls_java_home then
    java_cmd = jdtls_java_home .. '/bin/java'
  end
  local config = {
    settings = require('lsp.jdtls.settings'),
    capabilities = capabilities,
    on_attach = on_attach,
    name = 'jdtls',
    filetypes = {'java'},
    init_options = {
      bundles = bundles
    },
    cmd = {
      java_cmd,
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.protocol=true',
      '-Dlog.level=ALL',
      '-Dfile.encoding=utf-8',
      '-Xms1g',
      '--add-modules=ALL-SYSTEM',
      '--add-opens', 'java.base/java.util=ALL-UNNAMED',
      '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
      '-javaagent:'.. jdtls_path .. '/lombok.jar',
      '-jar', vim.fn.glob(jdtls_path .. '/plugins/org.eclipse.equinox.launcher_*.jar'),
      '-configuration', jdtls_path .. '/config_linux',
      '-data', jdtls_path .. '/workspace/' .. workspace_name,
    }
  }

  -- Server
  require('jdtls').start_or_attach(config)
end

return M
