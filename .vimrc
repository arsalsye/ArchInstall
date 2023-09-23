filetype on
filetype indent on
syntax on
set number
set incsearch

set clipboard=unnamedplus
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
set autoindent
set hlsearch
set ignorecase
set smartcase
set showcmd
set encoding=UTF-8

autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" Use steady bar in insert mode
let &t_SI = "\e[6 q" 

" Use steady block in insert mode
let &t_EI = "\e[2 q"

