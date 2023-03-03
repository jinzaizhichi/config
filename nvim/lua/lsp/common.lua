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
  if client.server_capabilities.documentSymbolProvider then
    require('nvim-navic').attach(client, bufnr)
  end
  if client.server_capabilities.documentHighlightProvider then
    vim.api.nvim_exec([[
    augroup lsp_document_highlight
    autocmd! * <buffer>
    autocmd CursorHold <buffer> lua pcall(vim.lsp.buf.document_highlight)
    autocmd CursorHoldI <buffer> lua pcall(vim.lsp.buf.document_highlight)
    autocmd CursorMoved <buffer> lua pcall(vim.lsp.buf.clear_references)
    augroup END
    ]], false)
  end

end

function M.make_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
  return capabilities
end

return M
