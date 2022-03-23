" NOTE: some keymap base on plug setting, you can find those in following file:
" ../lua/plugins/cmp.lua | ../lua/plugins/gitsigns.lua | ../lua/plugins/lsp_sinature.lua 
" ../lua/lsp/common.lua | ../lua/lsp/jdtls.lua | ../lua/plugins/telescope.lua | ../lua/plugins/treesitter.lua
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
nnoremap <silent> <C-h> <cmd>wincmd h<CR>
nnoremap <silent> <C-j> <cmd>wincmd j<CR>
nnoremap <silent> <C-k> <cmd>wincmd k<CR>
nnoremap <silent> <C-l> <cmd>wincmd l<CR>
nnoremap <silent> <M-h> <cmd>wincmd <<CR>
nnoremap <silent> <M-j> <cmd>wincmd +<CR>
nnoremap <silent> <M-k> <cmd>wincmd -<CR>
nnoremap <silent> <M-l> <cmd>wincmd ><CR>
noremap <silent> <M-n> :tabn<cr>
noremap <silent> <M-p> :tabp<cr>
tnoremap <silent> <M-n> <cmd>tabn<cr>
tnoremap <silent> <M-p> <cmd>tabp<cr>
" cnoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent><c-n> :BufferLineCycleNext<CR>
nnoremap <silent><c-p> :BufferLineCyclePrev<CR>
nnoremap <silent><leader><leader>b :BufferLinePick<CR>
" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><leader>bn :BufferLineMoveNext<CR>
nnoremap <silent><leader>bp :BufferLineMovePrev<CR>
nnoremap <silent><leader>x :Bdelete<CR>
nnoremap <silent><leader>a <cmd>Alpha<CR>
nnoremap <silent><leader>bb <c-^>

" copy to system clipboard
vmap <leader>y "+y

" paste to vim register
nnoremap <leader>p "+p

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent><leader>be :BufferLineSortByExtension<CR>
nnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><leader>bs :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

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

" Provided by setup function
nnoremap <silent> <leader>mm <cmd>lua vim.lsp.buf.formatting()<CR>

" treesitter context
nnoremap <leader>cc <cmd>TSContextToggle<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>fe <cmd>Telescope file_browser<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>
nnoremap <leader>fa <cmd>Telescope autocommands<cr>
nnoremap <leader>fk <cmd>Telescope keymaps<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fq <cmd>Telescope quickfix<cr>
nnoremap <leader>fr <cmd>Telescope registers<cr>
nnoremap <leader>fi <cmd>Telescope loclist<cr>
nnoremap <leader>fj <cmd>Telescope jumplist<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fii <cmd>Telescope builtin<cr>
nnoremap <leader>fic <cmd>Telescope colorscheme<cr>
nnoremap <leader>fio <cmd>Telescope vim_options<cr>
nnoremap <leader>fib <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fis <cmd>Telescope spell_suggest<cr>
nnoremap <leader>fir <cmd>Telescope reloader<cr>
nnoremap <leader>fm <cmd>Telescope marks<cr>
nnoremap <leader>fip <cmd>Telescope man_pages<cr>
nnoremap <leader>fhh <cmd>Telescope help_tags<cr>
nnoremap <leader>fhr <cmd>Telescope resume<cr>
nnoremap <leader>fhp <cmd>Telescope pickers<cr>
nnoremap <leader>fhl <cmd>Telescope highlights<cr>
nnoremap <leader>fht <cmd>Telescope tags<cr>
nnoremap <leader>fhc <cmd>Telescope command_history<cr>
nnoremap <leader>fhs <cmd>Telescope search_history<cr>
nnoremap <leader>ftt <cmd>Telescope treesitter<cr>
nnoremap <leader>ftp <cmd>Telescope filetypes<cr>
nnoremap <leader>fwy <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>fwn <cmd>Telescope diagnostics<cr>
nnoremap <leader>fwd :lua require'telescope.builtin'.diagnostics{bufnr=0}<cr>
nnoremap <leader>fws <cmd>Telescope lsp_dynamic_workspace_symbols<cr>
nnoremap <leader>fwr <cmd>Telescope lsp_references<cr>
nnoremap <leader>fwa <cmd>Telescope lsp_code_actions<cr>
vnoremap <leader>fwa <cmd>Telescope lsp_range_code_actions<cr>
" telescope extensions
nnoremap <leader>fp <cmd>Telescope projects<cr>
nnoremap <leader>fdc <cmd>Telescope dap commands<cr>
nnoremap <leader>fds <cmd>Telescope dap configurations<cr>
nnoremap <leader>fdl <cmd>Telescope dap list_breakpoints<cr>
nnoremap <leader>fdv <cmd>Telescope dap variables<cr>
nnoremap <leader>fdf <cmd>Telescope dap frames<cr>

" nvim tree
" nnoremap <leader>n :NvimTreeToggle<CR>
" nnoremap <leader><leader>nr :NvimTreeRefresh<CR>
" nnoremap <leader><leader>nf :NvimTreeFindFile<CR>

nnoremap <leader>fss :lua require('spectre').open()<CR>

" search current word
nnoremap <leader>fsw viw:lua require('spectre').open_visual()<CR>
vnoremap <leader>fsv :lua require('spectre').open_visual()<CR>
" search in current file
nnoremap <leader>fsf viw:lua require('spectre').open_file_search()<cr>

nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gbc <cmd>Telescope git_bcommits<cr>
nnoremap <leader>gbb <cmd>Telescope git_branches<cr>
nnoremap <leader>gh <cmd>Telescope git_stash<cr>

nnoremap <silent> <leader><leader>w <cmd>lua require'hop'.hint_words()<cr>
nnoremap <silent> <leader><leader>p <cmd>lua require'hop'.hint_patterns()<cr>
nnoremap <silent> <leader><leader>j <cmd>lua require'hop'.hint_lines()<cr>
nnoremap <silent> <leader><leader>s <cmd>lua require'hop'.hint_char1()<cr>

" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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

nnoremap <silent> <leader>uu :UndotreeToggle<cr>

nnoremap <silent> <leader>mt :MarksToggleSigns<cr>

" clever-f
map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)

" nvim-dap
nnoremap <silent> <leader>db <cmd>lua require'dap'.toggle_breakpoint()<cr>
nnoremap <silent> <leader>dc <cmd>lua require'dap'.continue()<cr>
nnoremap <silent> <leader>do <cmd>lua require'dap'.step_over()<cr>
nnoremap <silent> <leader>di <cmd>lua require'dap'.step_into()<cr>
nnoremap <silent> <leader>dB <cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>dp <cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr <cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl <cmd>lua require'dap'.run_last()<CR>
command DapScopesFloat :lua require'dap.ui.widgets'.centered_float(require('dap.ui.widgets').scopes)<CR>
command DapFramesFloat :lua require'dap.ui.widgets'.centered_float(require('dap.ui.widgets').frames)<CR>
command DapExpressioinFloat :lua require'dap.ui.widgets'.centered_float(require('dap.ui.widgets').expression)<CR>
nnoremap <silent> <leader>ds <cmd>DapScopesFloat<CR>
nnoremap <silent> <leader>df <cmd>DapFramesFloat<CR>
nnoremap <silent> <leader>de <cmd>DapExpressioinFloat<CR>
nnoremap <silent> <leader>dh <cmd>lua require'dap.ui.widgets'.hover()<CR>
nnoremap <silent> <leader>dt <cmd>DapVirtualTextToggle<CR>

" rest nivim
command RestNvim :lua require('rest-nvim').run()<CR>
command RestNvimPreview :lua require('rest-nvim').run(true)<CR>
command RestNvimLast :lua require('rest-nvim').last()<CR>
nnoremap <leader>re <cmd>RestNvim<CR>
nnoremap <leader>rp <cmd>RestNvimPreview<CR>
nnoremap <leader>rl <cmd>RestNvimLast<CR>

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <silent> <leader><leader>l :call ToggleQuickFix()<cr>

" source config
function! SourceMyConfigDir()
    for f in split(glob('~/.config/nvim/plugin/*.vim'), '\n')
        exe 'source' f
    endfor
    source $MYVIMRC
endfunction

nnoremap <silent> <Leader>sc <cmd>source $MYVIMRC<CR>

tnoremap <silent> <C-r><C-e> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <leader>rr :RnvimrToggle<CR>
tnoremap <silent> <C-r><C-r> <C-\><C-n>:RnvimrToggle<CR>
