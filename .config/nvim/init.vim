" use escape key to escape from terminal
tnoremap <Esc> <C-\><C-n>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

set number
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching
set ignorecase

" tab is 4 column
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
set expandtab

autocmd BufWritePre * :%s/\s\+$//e

set statusline=%F%m%r%h%w%q\ (%{&ff})(%{&fileencoding}){%Y}\ %{fugitive#statusline()}\ %l/%L\ %c

set wildmode=list:longest,full

set bg=dark
colorscheme desert
set termguicolors

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" function! BuildComposer(info)
"   if a:info.status != 'unchanged' || a:info.force
"     !cargo build --release
"     UpdateRemotePlugins
"   endif
" endfunction

" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-slash'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'vim-syntastic/syntastic'
" TODO neomake/neomake
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'vim-scripts/indentpython.vim'
Plug 'fatih/vim-go'

" Add plugins to &runtimepath
call plug#end()

" MARKDOWN COMPOSER
" let g:markdown_composer_open_browser = 0

" VIM-GO
let g:go_fmt_autosave = 0
let g:go_fmt_command = ""
" prevent conflict with syntastic
let g:go_list_type = "quickfix"

" SYNTASTIC
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['javascript', 'python', 'ruby', 'markdown', 'go', 'yaml', 'sh'],
            \ 'passive_filetypes': [] }

" automaticaly open/close error window :
"  * 0 disable for both
"  * 1 enable for both
"  * 2 disable automatic openning
let g:syntastic_auto_loc_list = 2

let g:syntastic_javascript_checkers=["eslint"]
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

" ACK
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

au BufRead,BufNewFile *.go set filetype=go

au BufRead,BufNewFile {CustomGemfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,Guardfile} set ft=ruby
au BufRead,BufNewFile {*.lod} set ft=javascript
au BufRead,BufNewFile {*.md} set ft=markdown

" in markdown files limit the width to 80 chars
au FileType markdown set textwidth=80

" for QOS
set tabstop=2 "ts: number of spaces that a tab renders as
set shiftwidth=2 "sw: number of spaces to use for autoindent
set softtabstop=2 "sts: number of spaces that tabs insert

autocmd FileType go set noexpandtab


