" NOTE: some keymap base on plug setting, you can find those in following file:
" ../lua/plugin/cmp.lua | ../lua/plugin/gitsigns.lua | ../lua/plugin/lsp_sinature.lua 
" ../lua/lsp/common.lua | ../lua/lsp/jdtls.lua | ../lua/plugin/telescope.lua | ../lua/plugin/treesitter.lua
nnoremap <silent> j gj
nnoremap <silent> gj j
nnoremap <silent> k gk
nnoremap <silent> gk k
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
" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><c-n> <cmd>bn<CR>
nnoremap <silent><c-p> <cmd>bp<CR>
nnoremap <silent><leader>b <cmd>exe "LualineBuffersJump!" . v:count1<CR>
nnoremap <silent><leader>B <cmd>LualineBuffersJump $<CR>
nnoremap <silent><leader>x <cmd>BufferDelete<CR>
nnoremap <silent><leader>a <cmd>Alpha<CR>
nnoremap <silent><leader><leader>b <c-^>

" copy to system clipboard
vmap <leader>y "+y

" paste to vim register
nnoremap <leader>p "+p
vmap <leader>p "+p

nnoremap <silent> <leader><leader>h <cmd>noh<CR>

" Provided by setup function
nnoremap <silent> <leader>mm <cmd>lua vim.lsp.buf.format { async = true }<CR>

" treesitter context
" nnoremap <leader>cc <cmd>TSContextToggle<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>fe <cmd>Telescope file_browser<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>
nnoremap <leader>fa <cmd>Telescope autocommands<cr>
nnoremap <leader>fk <cmd>Telescope keymaps<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<cr>
nnoremap <leader>fq <cmd>Telescope quickfix<cr>
nnoremap <leader>fr <cmd>Telescope registers<cr>
nnoremap <leader>fi <cmd>Telescope loclist<cr>
nnoremap <leader>fj <cmd>Telescope jumplist<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fii <cmd>Telescope builtin<cr>
nnoremap <leader>fic <cmd>Telescope colorscheme<cr>
nnoremap <leader>fiv <cmd>Telescope vim_options<cr>
nnoremap <leader>fib <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fit <cmd>Telescope current_buffer_tags<cr>
nnoremap <leader>fis <cmd>Telescope spell_suggest<cr>
nnoremap <leader>fir <cmd>Telescope reloader<cr>
nnoremap <leader>fit <cmd>Telescope tags<cr>
nnoremap <leader>fip <cmd>Telescope pickers<cr>
nnoremap <leader>fim <cmd>Telescope man_pages<cr>
nnoremap <leader>fm <cmd>Telescope marks<cr>
nnoremap <leader>fhh <cmd>Telescope help_tags<cr>
nnoremap <leader>fhr <cmd>Telescope resume<cr>
nnoremap <leader>fhl <cmd>Telescope highlights<cr>
nnoremap <leader>fhc <cmd>Telescope command_history<cr>
nnoremap <leader>fhs <cmd>Telescope search_history<cr>
nnoremap <leader>fhq <cmd>Telescope quickfixhistory<cr>
nnoremap <leader>ftt <cmd>Telescope treesitter<cr>
nnoremap <leader>ftp <cmd>Telescope filetypes<cr>
nnoremap <leader>fwD <cmd>Telescope diagnostics<cr>
nnoremap <leader>fwd :lua require'telescope.builtin'.diagnostics{bufnr=0}<cr>
nnoremap <leader>fws <cmd>Telescope lsp_dynamic_workspace_symbols<cr>
nnoremap <leader>fwS <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>fwr <cmd>Telescope lsp_references<cr>
" telescope extensions
nnoremap <leader>fp <cmd>Telescope projects<cr>
nnoremap <leader>fdc <cmd>Telescope dap commands<cr>
nnoremap <leader>fds <cmd>Telescope dap configurations<cr>
nnoremap <leader>fdl <cmd>Telescope dap list_breakpoints<cr>
nnoremap <leader>fdv <cmd>Telescope dap variables<cr>
nnoremap <leader>fdf <cmd>Telescope dap frames<cr>
nnoremap <leader>fsl <cmd>Telescope session-lens search_session<CR>

" lsp
nnoremap gD <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <Cmd>Telescope lsp_definitions<CR>
nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap gi <cmd>Telescope lsp_implementations<CR>
nnoremap gI <cmd>Telescope lsp_incoming_calls<CR>
nnoremap gO <cmd>Telescope lsp_outgoing_calls<CR>
nnoremap <leader>k <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <leader>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <leader>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <leader>D <cmd>Telescope lsp_type_definitions<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap gr <cmd>Telescope lsp_references<CR>
nnoremap <leader>i <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap [i <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap ]i <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>q <cmd>lua vim.diagnostic.setloclist()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>cr <Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>
nnoremap <leader>mm <cmd>lua vim.lsp.buf.format({async = true})<CR>
nnoremap <leader>mm <cmd>lua vim.lsp.buf.format({async = true})<CR>

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

" Display translation in a window
nnoremap <silent> <leader>tt <cmd>Translate ZH<CR>
xnoremap <silent> <leader>tt <cmd>Translate ZH<CR>
" Replace the text with translation
nnoremap <silent> <leader>tr <cmd>Translate ZH -output=replace<CR>
xnoremap <silent> <leader>tr <cmd>Translate ZH -output=replace<CR>
" Insert the text with translation
nnoremap <silent> <leader>ti <cmd>Translate ZH -output=insert<CR>
xnoremap <silent> <leader>ti <cmd>Translate ZH -output=insert<CR>
" copy translation to register
nnoremap <silent> <leader>ty <cmd>Translate ZH -output=register<CR>
xnoremap <silent> <leader>ty <cmd>Translate ZH -output=register<CR>

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
command DapExpressionFloat :lua require'dap.ui.widgets'.centered_float(require('dap.ui.widgets').expression)<CR>
command DapThreadsFloat :lua require'dap.ui.widgets'.centered_float(require('dap.ui.widgets').threads)<CR>
nnoremap <silent> <leader>ds <cmd>DapScopesFloat<CR>
nnoremap <silent> <leader>df <cmd>DapFramesFloat<CR>
nnoremap <silent> <leader>de <cmd>DapExpressionFloat<CR>
nnoremap <silent> <leader>dt <cmd>DapThreadsFloat<CR>
nnoremap <silent> <leader>dh <cmd>lua require'dap.ui.widgets'.hover()<CR>
nnoremap <silent> <leader>dv <cmd>DapVirtualTextToggle<CR>

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
if !exists('*SourceMyConfig')
    function SourceMyConfig()
        let configs = split(glob('~/.config/nvim/plugin/*.vim'))
        call extend(configs, split(glob('~/.config/nvim/after/plugin/*.vim')))
        call extend(configs, split(glob('~/.config/nvim/after/ftplugin/*.vim')))
        " for f in split(glob(configs), '\n')
        for f in configs
            exe 'source' f
        endfor
        source $MYVIMRC
        PackerCompile
    endfunction
endif

nnoremap <silent> <Leader>sc <cmd>call SourceMyConfig()<CR>

" auto session
nnoremap <silent> <Leader>ss <cmd>SaveSession<CR>
nnoremap <silent> <Leader>sr <cmd>RestoreSession<CR>
nnoremap <silent> <Leader>sd <cmd>DeleteSession<CR>

"
tnoremap <silent> <C-r><C-e> <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <leader>rr :RnvimrToggle<CR>
tnoremap <silent> <C-r><C-r> <C-\><C-n>:RnvimrToggle<CR>
