augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'lspconfig.java.jdtls_setup'.setup()
augroup end
