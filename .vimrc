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
" Indent guides
Plugin 'Yggdroot/indentLine'
" Monokai
Plugin 'tomasr/molokai'
" Trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
" Lightline
Plugin 'itchyny/lightline.vim'
" delimitMate
Plugin 'Raimondi/delimitMate'
" autocomplete
Plugin 'Valloric/YouCompleteMe'
" syntastic
Plugin 'scrooloose/syntastic'

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

" Proper tabbing support
set tabstop=4
set shiftwidth=4
set expandtab
set cindent

" Add numbered lines
set number

" Turn on theme
let g:molokai_original = 1
syntax on
colorscheme molokai

" Proper powerbar support
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
