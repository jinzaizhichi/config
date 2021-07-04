" auto positioning to last edit position when open file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
" auto save buffer when switch
au BufLeave * if &readonly==0 && filereadable(bufname('%')) | silent update | endif
" auto vimdiff wrap
au VimEnter * if &diff | execute 'windo set wrap' | endif

