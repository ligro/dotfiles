let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['javascript', 'python', 'ruby', 'markdown', 'go', 'yaml', 'sh'],
            \ 'passive_filetypes': [] }

let g:syntastic_auto_loc_list = 2

let g:syntastic_javascript_checkers=["eslint"]
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

" Ctrl-P
let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.git', 'cd %s && git ls-files -co --exclude-standard'],
		\ 2: ['.hg', 'hg --cwd %s locate -I .'],
		\ },
	\ 'fallback': 'find %s -type f'
	\ }

au BufRead,BufNewFile {CustomGemfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,Guardfile} set ft=ruby
au BufRead,BufNewFile {*.lod} set ft=javascript
au BufRead,BufNewFile {*.md} set ft=markdown

" for QOS
set tabstop=2 "ts: number of spaces that a tab renders as
set shiftwidth=2 "sw: number of spaces to use for autoindent
set softtabstop=2 "sts: number of spaces that tabs insert

autocmd FileType go set noexpandtab

set wildmenu
set wildmode=list:longest,full

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/syntastic'
"
"" Check : http://gitlab.qosenergy.com/qosenergy/qantum/wikis/devdoc-vim
""plugin recommandé pour ruby/rails (installation via vundle ou pathogen ou neobundle)
"Plugin 'tpope/vim-projectionist' " Allow to use :A on any project
"Plugin 'tpope/vim-bundler' " add gf on Gemfile to open gem source
"Plugin 'tpope/vim-rake' " Need vim-projectionist ta add a :A for alternative file
"Plugin 'tpope/vim-rails'
"Plugin 'rking/ag.vim'
""Plugin 'pangloss/vim-javascript'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'fatih/vim-go'

let g:go_fmt_autosave = 0
let g:go_fmt_command = ""
" prevent conflict with syntastic
let g:go_list_type = "quickfix"

au BufRead,BufNewFile *.go set filetype=go

"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" requires vim-python and python-git
" function! CommitFile()
" python << EOF
" import vim, git
" curfile = vim.current.buffer.name
" if curfile:
"     try:
"         repo = git.Repo(curfile)
"         repo.git.add(curfile)
"         repo.git.commit(m='Update')
"     except (git.InvalidGitRepositoryError, git.GitCommandError):
"         pass
" EOF
" endfunction
" autocmd FileType *.autocommit au BufWritePost <buffer> call CommitFile()

let g:ackprg = "ag --vimgrep"

colorscheme desert

"set termguicolors
