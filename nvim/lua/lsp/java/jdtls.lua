local M = {}

function M.setup()
  local on_attach = function(client, bufnr)
    -- require'jdtls'.setup_dap({hotcodereplace = 'auto'})
    require'jdtls'.setup_dap()
    require('jdtls.dap').setup_dap_main_class_configs()
    require'jdtls.setup'.add_commands()
    -- require('jdtls').setup_dap({hotcodereplace = 'auto'})
    -- require'lsp-status'.register_progress()
    require'lspkind'.init()

    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>Telescope lsp_definitions<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<leader>D', '<cmd>Telescope lsp_type_definitions<CR>',
                   opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<leader>ca',
                   "<Cmd>lua require('jdtls').code_action()<CR>", opts)
    buf_set_keymap('v', '<leader>ca',
                   "<Cmd>lua require('jdtls').code_action(true)<CR>", opts)
    buf_set_keymap('n', '<leader>cr',
                   "<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>",
                   opts)
    buf_set_keymap('n', '<leader>co',
                   "<Cmd>lua require('jdtls').organize_imports()<CR>", opts)
    buf_set_keymap('n', '<leader>cv',
                   "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
    buf_set_keymap('v', '<leader>cv',
                   "<Cmd>lua require('jdtls').extract_variable(true)<CR>", opts)
    buf_set_keymap('n', '<leader>ct',
                   "<Cmd>lua require('jdtls').extract_constant()<CR>", opts)
    buf_set_keymap('v', '<leader>ct',
                   "<Cmd>lua require('jdtls').extract_constant(true)<CR>", opts)
    buf_set_keymap('v', '<leader>cm',
                   "<Cmd>lua require('jdtls').extract_method(true)<CR>", opts)
    -- If using nvim-dap
    -- This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
    buf_set_keymap('n', '<leader>cjt',
                   "<Cmd>lua require('jdtls').test_class()<CR>", opts)
    buf_set_keymap('n', '<leader>cjn',
                   "<Cmd>lua require('jdtls').test_nearest_method()<CR>", opts)
    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
      buf_set_keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>",
                     opts)
    elseif client.resolved_capabilities.document_range_formatting then
      buf_set_keymap("n", "<leader>fm",
                     "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
      vim.api.nvim_exec([[
    augroup lsp_document_highlight
    autocmd! * <buffer>
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]], false)
    end

  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  capabilities.workspace.configuration = true
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  local javaconf = require('lsp.java.settings')
  local config = {
    flags = {allow_incremental_sync = true},
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {'java'},
    cmd = javaconf.cmd
  }

  config.settings = javaconf.settings
  config.on_attach = on_attach
  config.on_init = function(client, _)
    client.notify('workspace/didChangeConfiguration',
                  {settings = config.settings})
  end

  config.init_options = javaconf.init_options

  -- Server
  require('jdtls').start_or_attach(config)
end

return M
