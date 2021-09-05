" auto positioning to last edit position when open file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
" auto save buffer when switch
au BufLeave * if &readonly==0 && filereadable(bufname('%')) | silent update | endif
" auto vimdiff wrap
au VimEnter * if &diff | execute 'windo set wrap' | endif
" Use completion-nvim in every buffer
" au BufEnter * lua require'completion'.on_attach()
" auto run PackerCompile whether plugins.lua is updated
au BufWritePost *.lua source <afile> | PackerCompile

" autocmd InsertLeave * :silent !fcitx5-remote -c " 退出插入模式时禁用输入法
" autocmd BufCreate * :silent !fcitx5-remote -c " 创建 Buf 时禁用输入法
" autocmd BufEnter * :silent !fcitx5-remote -c " 进入 Buf 时禁用输入法
" autocmd BufLeave * :silent !fcitx5-remote -c " 离开 Buf 时禁用输入法
