let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['php', 'javascript', 'python', 'ruby'],
            \ 'passive_filetypes': [] }

let g:syntastic_auto_loc_list = 2

let g:syntastic_javascript_checkers=["eslint"]

" Ctrl-P
let g:ctrlp_max_depth = 40

"source /usr/share/vim/vimfiles/plugin/ag.vim

au BufNewFile,BufRead *.php-dist set filetype=php
au BufNewFile,BufRead *.cql set filetype=sql
