 "________________________________________________
 " ______  ______  ____   _    ____  _____  _____   
 "|      >|   ___||    \ | |  |    ||_    ||     |  
 "|     < |   ___||     \| | _|    | |    ||     \  
 "|______>|______||__/\____||______| |____||__|\__\                                                   
 "_________________________________________________



" plugins install

call plug#begin('~/.vim/plugged') | "plugins

Plug 'airblade/vim-gitgutter' | "git info

Plug 'fxn/vim-monochrome' "colorscheme

Plug 'neoclide/coc.nvim', {'branch':'release'} |

Plug 'ap/vim-css-color' | "color highlighting

call plug#end()

" indentation settings

set cindent | "smart indentation
set expandtab | "tabs convert to spaces
set tabstop=4 | "two spaces
set shiftwidth=4 | "two spaces

" foundational settings

syntax on | "syntax highlighting
set showcmd | "makes the command visible as typed
set number | "show line numbers
set diffopt=vertical | "git diffs open vertically
set splitbelow | "buffers open below, not above
set splitright | "buffers open to the right, not left
set undofile | "undo after closing and reopening a file

" foundational settings

syntax on | "syntax highlighting
set showcmd | "makes the command visible as typed
set number | "show line numbers
set diffopt=vertical | "git diffs open vertically
set splitbelow | "buffers open below, not above
set splitright | "buffers open to the right, not left
set undofile | "undo after closing and reopening a file
set spell | "spell check
set wildmode=longest,list,full | "make tab completion work like bash
set inccommand=nosplit

" appearance

hi Comment cterm=italic
set background=dark
set termguicolors
colorscheme monochrome
let g:monochrome_italic_comments = 1
colorscheme monochrome


" coc extensions
let g:coc_global_extensions = [
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-clangd',
    \ 'coc-python',
    \ 'coc-emmet',
    \ 'coc-highlight',
    \ 'coc-pairs',
    \ 'coc-snippets',
    \]

let g:python3_host_prog = '/usr/bin/python3.8'

