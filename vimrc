set term=xterm-256color
set nu
set cindent
set autoindent
set smartindent
set ignorecase
set tabstop=4
set shiftwidth=4
set mouse=a
color synic

<<<<<<< HEAD
" ctags
set tags=./tags;../tags;../../tags;../../../tags;../../../../tags;../../../../../tags;../../../../../../tags;../../../../../../../tags
=======
" cscope
set csprg=/usr/bin/cscope 
set csto=0 
set cst 
set nocsverb 
if filereadable("./cscope.out")       
	cs add cscope.out                 
else                                  
	cs add /usr/src/linux/cscope.out  
endif                                  
set csverb
>>>>>>> 285c1b3e89e8f2437827d8a87a19ed1f86c202cf

" NERDTree
let NERDTreeWinPos = "left"
nmap <F9> :NERDTree<CR>

" Fuzzyfinder
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp|class|pyc|orig)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
map <leader>ff :FufFile **/<CR>
map <leader>fb :FufBuffer<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

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
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'FuzzyFinder'
Plugin 'cscope.vim'
Plugin 'AutoComplPop'
Plugin 'kergoth/vim-bitbake'

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
"
