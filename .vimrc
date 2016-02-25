let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['php', 'javascript', 'python'],
            \ 'passive_filetypes': [] }

let g:syntastic_auto_loc_list = 2

let g:syntastic_javascript_checkers=["eslint"]

let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_post_args = "--standard=/home/ligro/Projects/startpage/config/phpcs.xml"

" Ctrl-P
let g:ctrlp_max_depth = 40

" PHPDOC
source /usr/share/vim/vimfiles/ftplugin/php/php-doc.vim
autocmd FileType php inoremap <C-d> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-d> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-d> :call PhpDocRange()<CR>

source /usr/share/vim/vimfiles/plugin/ack.vim
source /usr/share/vim/vimfiles/plugin/ag.vim

au BufNewFile,BufRead *.php-dist set filetype=php
au BufNewFile,BufRead *.cql set filetype=sql
