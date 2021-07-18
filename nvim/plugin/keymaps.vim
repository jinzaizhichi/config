cnoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent><c-n> :BufferLineCycleNext<CR>
nnoremap <silent><c-p> :BufferLineCyclePrev<CR>

" copy to system clipboard
vmap <leader><leader>y "+y

" paste to vim register
nnoremap <leader><leader>p "+p

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><leader>bn :BufferLineMoveNext<CR>
nnoremap <silent><leader>bp :BufferLineMovePrev<CR>
nnoremap <silent><leader>x :bd<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent><leader>be :BufferLineSortByExtension<CR>
nnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><leader>bs :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>
nnoremap <silent><C-t><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><C-t><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" use : instead of <Cmd>
nnoremap <silent> <leader>l :noh<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" nvim tree
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader><leader>nr :NvimTreeRefresh<CR>
nnoremap <leader><leader>nf :NvimTreeFindFile<CR>

nnoremap <leader>fs :lua require('spectre').open()<CR>

"search current word
nnoremap <leader>fsw viw:lua require('spectre').open_visual()<CR>
vnoremap <leader>fsv :lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>fsf viw:lua require('spectre').open_file_search()<cr>

" <c-k> will either expand the current snippet at the word or try to jump to
" the next position for the snippet.
inoremap <c-k> <cmd>lua return require'snippets'.expand_or_advance(1)<CR>

" <c-j> will jump backwards to the previous field.
" If you jump before the first field, it will cancel the snippet.
inoremap <c-j> <cmd>lua return require'snippets'.advance_snippet(-1)<CR>
" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <silent> <leader>gf :DiffviewOpen<CR>
" Provided by setup function
nnoremap <silent> <leader>fm :Format<CR>

nnoremap <silent> <leader><leader>w <cmd>lua require'hop'.hint_words()<cr>
nnoremap <silent> <leader><leader>p <cmd>lua require'hop'.hint_patterns()<cr>
nnoremap <silent> <leader><leader>j <cmd>lua require'hop'.hint_lines()<cr>
nnoremap <silent> <leader><leader>s <cmd>lua require'hop'.hint_char1()<cr>
" " compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Echo translation in the cmdline
nmap <silent> <leader>tc <Plug>Translate
vmap <silent> <leader>tc <Plug>TranslateV
" Display translation in a window
nmap <silent> <leader>tt <Plug>TranslateW
vmap <silent> <leader>tt <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <leader>tr <Plug>TranslateR
vmap <silent> <leader>tr <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <leader>tx <Plug>TranslateX

" DB
nnoremap <silent> <leader>dd :DBUIToggle<cr>

" clever-f
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

