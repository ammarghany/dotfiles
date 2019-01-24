set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'wesleyche/trinity'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'wesleyche/srcexpl'
Plugin 'chazy/cscope_maps'

Plugin 'yggdroot/leaderf'

Plugin 'Valloric/YouCompleteMe'

Plugin 'flazz/vim-colorschemes'


Plugin 'scrooloose/nerdcommenter'

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

set wildmenu

colorscheme solarized
set background=dark

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

"open nerdtree on startup
"autocmd VimEnter * NERDTree
"set cursor to code file
"autocmd VimEnter * wincmd p
"open nerdtreemirror on new tab
"autocmd BufWinEnter * NERDTreeMirror

nmap <F7> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

" // The switch of the Source Explorer
"nmap <F9> :SrcExplToggle<CR>

" Fix broken vim colors in TMUX
set term=screen-256color


set ttimeoutlen=0
set noesckeys

set updatetime=250

"leaderf options
let g:Lf_FollowLinks=1

"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1


nnoremap <C-p>f :Leaderf file<CR>
nnoremap <C-p>n :Leaderf function<CR>
nnoremap <C-p>m :Leaderf mru<CR>
nnoremap <C-p>r :Leaderf cmdHistory<CR>
nnoremap <C-p>h :Leaderf searchHistory<CR>
nnoremap <C-p>b :Leaderf buffer<CR>

set clipboard=unnamedplus

