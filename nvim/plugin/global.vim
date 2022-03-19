if exists('g:started_by_firenvim')
  let g:auto_session_enabled = v:false
endif
let g:db_ui_winwidth = 30

let g:vim_dadbod_completion_mark = ''
let g:db_ui_save_location = '~/.local/share/nvim/db_ui_queries'

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
let g:translator_default_engines = ['google']

let g:onedark_config = {
  \ 'term_colors': v:false
\ }
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
    \ }
let fc = g:firenvim_config['localSettings']
let fc['.*'] = { 'takeover': 'never' }
