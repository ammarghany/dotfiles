set ff=unix
set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = ','

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'pbogut/fzf-mru.vim'
"Plugin 'zackhsi/fzf-tags'

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

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>r :History:<CR>

nnoremap <C-p>m :FZFMru<CR>

nnoremap <C-p>n :Leaderf function<CR>
nnoremap <C-p>s :Leaderf searchHistory<CR>

"nmap <C-]> <Plug>(fzf_tags)

" source: https://gist.github.com/amitab/cd051f1ea23c588109c6cfcb7d1d5776
function! Cscope(option, query)
  let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  let opts = {
  \ 'source':  "cscope -dL" . a:option . " " . a:query . " | awk '" . color . "'",
  \ 'options': ['--ansi', '--prompt', '> ',
  \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  \ 'down': '30%'
  \ }
  function! opts.sink(lines) 
    let data = split(a:lines)
    let file = split(data[0], ":")
    execute 'e ' . '+' . file[1] . ' ' . file[0]
  endfunction
  call fzf#run(opts)
endfunction

nnoremap <silent> <Leader>cs :call Cscope('0', expand('<cword>'))<CR>
nnoremap <silent> <Leader>cg :call Cscope('1', expand('<cword>'))<CR>
nnoremap <silent> <Leader>cd :call Cscope('2', expand('<cword>'))<CR>
nnoremap <silent> <Leader>cc :call Cscope('3', expand('<cword>'))<CR>
nnoremap <silent> <Leader>ct :call Cscope('4', expand('<cword>'))<CR>
"nnoremap <silent> ,cm :call Cscope('5', expand('<cword>'))<CR>
nnoremap <silent> <Leader>ce :call Cscope('6', expand('<cword>'))<CR>
"nnoremap <silent> <Leader>cf :call Cscope('7', expand('<cword>'))<CR>
nnoremap <silent> <Leader>ci :call Cscope('8', expand('<cword>'))<CR>
nnoremap <silent> <Leader>ca :call Cscope('9', expand('<cword>'))<CR>

set clipboard+=unnamedplus
