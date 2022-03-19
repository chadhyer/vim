let mapleader = '/'  " useful bind action
set nocompatible                   " required
filetype off                       " required
set rtp+=~/.vim/bundle/Vundle.vim  " required
call vundle#begin()                " required
" Plugin Manager
Plugin 'VundleVim/Vundle.vim'      "required
"--- VUNDLE PLUGINS ---
" filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'

" Code Folding
Plugin 'tmhedberg/SimpylFold'

" python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()                  "required

" Basic Set changes
set expandtab
set number " display line number
"set paste
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set t_Co=256
set t_Co=16
set nocompatible
set autoindent
set noswapfile
set hlsearch

" no arrow keys - for pros
"nnoremap <Left> <NOP>
"nnoremap <Right> <NOP>
"nnoremap <Up> <NOP>
"nnoremap <Down> <NOP>

" remove highlights for searching
nnoremap <CR> :nohlsearch<CR>

" NerdTree
"noremap <Leader>d :NERDTreeToggle<CR>
noremap <Leader>d :NERDTreeFocus<CR>
noremap <Leader>c :NERDTreeClose<CR>
noremap <Leader>f :NERDTreeFind<CR>
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1

" Folding
"set foldmethod=syntax
set foldmethod=indent  "fold by indent blocks
set foldlevel=99  "prevent auto folding
nnoremap <space> za

" Highlight whitespace in red
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile * match BadWhitespace /\s\+$/

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" make backspaces more powerfull
set backspace=indent,eol,start

" COLOR
colorscheme simple
