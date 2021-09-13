let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]
" let g:completion_chain_complete_list = {
"     \ 'default': [
"     \    {'complete_items': ['lsp', 'tabnine', 'tags', 'snippet',  ]},
"     \    {'mode': '<c-p>'},
"     \    {'mode': '<c-n>'}
"     \]
" \}

let g:db_ui_winwidth = 30

" let g:completion_matching_strategy_list = ['fuzzy', 'exact', 'substring', 'all']
" let g:completion_matching_smart_case = 1
" let g:completion_trigger_on_delete = 1
let g:dap_virtual_text = 'all frames'
" let g:dap_virtual_text = v:true
" " Source is automatically added, you just need to include it in the chain complete list
let g:completion_chain_complete_list = {
    \   'sql': [
    \    {'complete_items': ['vim-dadbod-completion']},
    \   ],
    \ }
" Make sure `substring` is part of this list. Other items are optional for this completion source
let g:completion_matching_strategy_list = ['exact', 'substring']
" Useful if there's a lot of camel case items
let g:completion_matching_ignore_case = 1
let g:vim_dadbod_completion_mark = ''
let g:db_ui_save_location = '~/.local/share/nvim/db_ui_queries'

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s r',
\ 'find_history'       : 'SPC o h',
\ 'find_file'          : 'SPC o f',
\ 'new_file'           : 'SPC o n',
\ 'find_word'          : 'SPC o a',
\ 'book_marks'         : 'SPC o b',
\ 'change_colorscheme' : 'SPC o c',
\ }

" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1
" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 0
" Disable a border for floating window
let g:rnvimr_draw_border = 1
" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 0
" Change the border's color
" let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}
" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 0
" Add a shadow window, value is equal to 100 will disable shadow
" let g:rnvimr_shadow_winblend = 70
" Draw border with both
" let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
