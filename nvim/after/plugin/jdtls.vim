augroup jdtls_lsp
    autocmd!
    autocmd FileType java lua require'lsp.java.jdtls_setup'.setup()
augroup end
  " augroup lsp
  "   au!
  "   au FileType java lua require('jdtls').start_or_attach({cmd = {'jdtls.sh'}})
  " augroup end
