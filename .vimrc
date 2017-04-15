let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': ['php', 'javascript', 'python', 'ruby'],
            \ 'passive_filetypes': [] }

let g:syntastic_auto_loc_list = 2

let g:syntastic_javascript_checkers=["eslint"]

" Ctrl-P
let g:ctrlp_max_depth = 40

"source /usr/share/vim/vimfiles/plugin/ag.vim

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,Guardfile} set ft=ruby

" for QOS
set tabstop=2 "ts: number of spaces that a tab renders as
set shiftwidth=2 "sw: number of spaces to use for autoindent
set softtabstop=2 "sts: number of spaces that tabs insert

" Check : http://gitlab.qosenergy.com/qosenergy/qantum/wikis/devdoc-vim
"plugin recommandé pour ruby/rails (installation via vundle ou pathogen ou neobundle)
"Plugin 'tpope/vim-projectionist' " Allow to use :A on any project
"Plugin 'tpope/vim-bundler' " add gf on Gemfile to open gem source
"Plugin 'tpope/vim-rake' " Need vim-projectionist ta add a :A for alternative file
"Plugin 'tpope/vim-rails'
"Plugin 'rking/ag.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'vim-ruby/vim-ruby'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
