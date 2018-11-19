map<F6> :setlocal spell! spelllang=en_US<CR>
map<C-o> : NERDTreeToggle<CR>
set encoding=utf-8
filetype plugin on
filetype indent on
let g:pythonmode_python = 'python3'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:rainbow_active=1
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" for lightline
set laststatus=2

syntax on

set number

set smartindent
set autoindent

set tabstop=2
set shiftwidth=2
set expandtab

set backspace=indent,eol,start

set nostartofline

set confirm

set mouse=a

colorscheme spring-night

hi Normal ctermbg=none
hi LineNr ctermbg=none

let &t_SI.="\e[6 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[2 q"

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkon0


autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
autocmd BufNewFile *.java
  \ exe "normal ipublic class " . expand('%:r')
  \ "{\n\npublic static void main(String[] args) {\n\n}\n}"

autocmd BufNewFile *.cpp
  \ exe "normal i#include<iostream>"
  \ "\n#include<string>"
  \ "\n\nusing namespace std;"
  \ "\n\nint main() { \nreturn 0;\n}"

autocmd BufNewFile *.py
  \ exe "normal idef main():\npass"
  \ "\n\nif __name__ == '__main__':\n\tmain()"

call plug#begin('~/.vim/bundle')
Plug 'hzchirs/vim-material'
Plug 'rhysd/vim-color-spring-night'
Plug 'arcticicestudio/nord-vim'
Plug 'luochen1990/rainbow'
Plug 'Valloric/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'nvie/vim-flake8'
Plug 'chrisbra/csv.vim'
call plug#end()

