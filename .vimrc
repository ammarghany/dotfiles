set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'takac/vim-hardtime'
Plugin 'valloric/youcompleteme'
Plugin 'lifepillar/vim-solarized8'
"Plugin 'vim-scripts/cscope.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-bufferline'
Plugin 'qpkorr/vim-bufkill'

Plugin 'gnattishness/cscope_maps'
Plugin 'kendling/taghighlight'
Plugin 'majutsushi/tagbar'
Plugin 'miyakogi/conoline.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'dracula/vim'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tweekmonster/fzf-filemru'
Plugin 'pbogut/fzf-mru.vim'

"Plugin 'AutoClose'
"Plugin 'townk/vim-autoclose'
"Plugin 'jiangmiao/auto-pairs'

Plugin 'thaerkh/vim-workspace'
Plugin 'justinmk/vim-sneak'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

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

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:Powerline_symbols = 'fancy'


"ctrlp
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

"""""""""""
"set guifont=Monaco:h10 noanti
"let g:jellybeans_overrides = {
"\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
"\}
"let g:jellybeans_use_lowcolor_black = 1
"""""""""""
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:solarized_termcolors=256

"vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized8_dark
"colorscheme jellybeans
"colorscheme dracula
"
"syntastic

set laststatus=2
set t_Co=16

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

set nocompatible
set encoding=utf-8
"if executable('ag')
"    let g:ackprg = 'ag --vimgrep'
"endif


let g:hardtime_default_on = 0

set relativenumber
set number

set clipboard=unnamedplus

"Youcompleteme fix
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"set paste

"open nerdtree on startup
"autocmd VimEnter * NERDTree
"set cursor to code file
"autocmd VimEnter * wincmd p
"open nerdtreemirror on new tab
"autocmd BufWinEnter * NERDTreeMirror

nnoremap <C-e> :NERDTreeToggle<CR>

":autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
":let HlUnderCursor=1
":nnoremap <silent> <F3> :exe
"let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>

"set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <F8> :TagbarToggle<CR>

let g:conoline_use_colorscheme_default_normal=1
let g:conoline_use_colorscheme_default_insert=1

set cursorcolumn

"nnoremap n nzz
"nnoremap N Nzz
"nnoremap * *zz
"nnoremap # #zz
"nnoremap g* g*zz
"nnoremap g# g#zz

set rtp+=~/.fzf

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{mk,js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '

command! -bang -nargs=* Rg call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)


nnoremap <C-p>a :Rg<CR>
nnoremap <C-p>f :Files<CR>
nnoremap <C-p>m :FZFMru<CR>
nnoremap <C-p>b :Buffers<CR>
nnoremap <C-p>h :History<CR>
nnoremap <C-p>l :Lines<CR>
nnoremap <C-p>r :History:<CR>

map f <Plug>Sneak_s
map F <Plug>Sneak_S

set incsearch

set scrolloff=999

set ttimeoutlen=0
set noesckeys

set ignorecase

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

