local M = {}

function M.set_keymap(bufnr, ...)
  vim.api.nvim_buf_set_keymap(bufnr, ...)
end

function M.set_option(bufnr, ...)
  vim.api.nvim_buf_set_option(bufnr, ...)
end

local opts = { noremap = true, silent = true }
M.opts = opts

function M.setup(client, bufnr)
  require('nvim-navic').attach(client, bufnr)
  M.set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- Mappings.
  M.set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  M.set_keymap(bufnr, 'n', 'gd', '<Cmd>Telescope lsp_definitions<CR>', opts)
  M.set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  M.set_keymap(bufnr, 'n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts)
  M.set_keymap(bufnr, 'n', 'gI', '<cmd>Telescope lsp_incoming_calls<CR>', opts)
  M.set_keymap(bufnr, 'n', 'gO', '<cmd>Telescope lsp_outgoing_calls<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader><leader>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>D', '<cmd>Telescope lsp_type_definitions<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  M.set_keymap(bufnr, 'n', 'gr', '<cmd>Telescope lsp_references<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>i', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  M.set_keymap(bufnr, 'n', '[i', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  M.set_keymap(bufnr, 'n', ']i', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  M.set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  --[[ M.set_keymap(bufnr, 'n', '<leader>ca', "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    M.set_keymap(bufnr, 'v', '<leader>ca', "<Cmd>lua vim.lsp.buf.range_code_action()<CR>", opts) ]]
  M.set_keymap(bufnr, 'n', '<leader>ca', "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  M.set_keymap(bufnr, 'v', '<leader>ca', ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)
  M.set_keymap(bufnr, 'n', '<leader>cr', "<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>", opts)
  M.set_keymap(bufnr, "n", "<leader>mm", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", opts)
  M.set_keymap(bufnr, "v", "<leader>mm", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", opts)
  vim.api.nvim_exec([[
  augroup lsp_document_highlight
  autocmd! * <buffer>
  autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
  autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
  autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  augroup END
  ]], false)

end

return M
