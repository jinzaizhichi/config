nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
cnoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
nnoremap <silent> gb <c-^>
" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent><c-n> :BufferLineCycleNext<CR>
nnoremap <silent><c-p> :BufferLineCyclePrev<CR>
nnoremap <silent><leader><leader>b :BufferLinePick<CR>
" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><leader>bn :BufferLineMoveNext<CR>
nnoremap <silent><leader>bp :BufferLineMovePrev<CR>
nnoremap <silent><leader>x :bd<CR>

" copy to system clipboard
vmap <leader>y "+y

" paste to vim register
nnoremap <leader>p "+p

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent><leader>be :BufferLineSortByExtension<CR>
nnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><leader>bs :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

" terminal
nnoremap <silent><C-t><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><C-t><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><C-t><C-r> <C-\><C-n>

" hlslens
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" use : instead of <Cmd>
nnoremap <silent> <leader><leader>h <cmd>noh<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" telescope extensions
nnoremap <leader>fp <cmd>lua require'telescope'.extensions.project.project{}<cr>
nnoremap <leader>fc <cmd>Cheatsheet<cr>
nnoremap <leader>fdc <cmd>Telescope dap commands<cr>
nnoremap <leader>fds <cmd>Telescope dap configurations<cr>
nnoremap <leader>fdl <cmd>Telescope dap list_breakpoints<cr>
nnoremap <leader>fdv <cmd>Telescope dap variables<cr>
nnoremap <leader>fdf <cmd>Telescope dap frames<cr>

" nvim tree
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader><leader>nr :NvimTreeRefresh<CR>
nnoremap <leader><leader>nf :NvimTreeFindFile<CR>

nnoremap <leader>fs :lua require('spectre').open()<CR>

" search current word
nnoremap <leader>fsw viw:lua require('spectre').open_visual()<CR>
vnoremap <leader>fsv :lua require('spectre').open_visual()<CR>
" search in current file
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
nnoremap <silent> <leader><leader>d :DBUIToggle<cr>
" markdown preview
nnoremap <silent> <leader>mp :Glow<cr>

" clever-f
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

" nvim-dap
nnoremap <silent> <leader>db <cmd>lua require'dap'.toggle_breakpoint()<cr>
nnoremap <silent> <leader>dc <cmd>lua require'dap'.continue()<cr>
nnoremap <silent> <leader>do <cmd>lua require'dap'.step_over()<cr>
nnoremap <silent> <leader>di <cmd>lua require'dap'.step_into()<cr>
nnoremap <silent> <leader>dB <cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>dlb <cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr <cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl <cmd>lua require'dap'.run_last()<CR>
nnoremap <silent> <leader>duu <cmd>lua require("dapui").toggle()<CR>
nnoremap <silent> <leader>duc <cmd>lua require("dapui").close()<CR>
nnoremap <silent> <leader>df <cmd>lua require("dapui").float_element()<CR>
nnoremap <silent> <leader>de <cmd>lua require("dapui").eval()<CR>

" trouble nvim
nnoremap <leader>lt <cmd>TroubleToggle<cr>
nnoremap <leader>lw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>ld <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>lq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>ll <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

" rest nivim
nnoremap <leader>rr <Plug>RestNvim<cr>
nnoremap <leader>rp <Plug>RestNvimPreview<cr>

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <silent> <leader><leader>l :call ToggleQuickFix()<cr>

" dashboard
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>oh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>of :DashboardFindFile<CR>
nnoremap <silent> <Leader>oc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>oa :DashboardFindWord<CR>
nnoremap <silent> <Leader>ob :DashboardJumpMark<CR>
nnoremap <silent> <Leader>on :DashboardNewFile<CR>
