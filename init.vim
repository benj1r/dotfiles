
" ----------------
"  github.com/b3nj1r
" ----------------

call plug#begin('~/.vim/plugged')
Plug 'HerringtonDarkholme/yats.vim' | "TS Syntax
Plug 'airblade/vim-gitgutter' | "git info in editor
"Plug 'bluz71/vim-nightfly-guicolors' | "color scheme
"Plug 'tyrannicaltoucan/vim-deep-space' |
"Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'chr4/nginx.vim' | "nginx colors
Plug 'itchyny/lightline.vim' | "Status bar
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | "Installs FZF on the system.
Plug 'junegunn/fzf.vim' | "Fuzzy find. Find in project. Find file by name. Regex search. Much more.
Plug 'junegunn/goyo.vim' | "Distraction free mode
Plug 'junegunn/limelight.vim' | "Text highlighting
Plug 'junegunn/vim-peekaboo' | "Show registers
Plug 'machakann/vim-highlightedyank' | "Highlights the selection just yanked
Plug 'mhinz/vim-grepper' | "Grep vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}| "COC Vim is the backbone of modern Vim. It does all the IDE stuff.
Plug 'pechorin/any-jump.vim' | " Any jump let's you jump to related places.
Plug 'rhysd/git-messenger.vim' | "View git commit information
Plug 'sheerun/vim-polyglot' | "A language pack
Plug 'tpope/vim-abolish' | "Text manipulation, including conversion to snake_case and camelCase.
Plug 'tpope/vim-commentary' | "Add comments to code.
Plug 'tpope/vim-fugitive'| "Git in Vim. Lots to learn, but really good.
Plug 'tpope/vim-surround'| "Surround text with quotes, brackets, etc.
Plug 'tpope/vim-vinegar'| "Makes the default vim file tree (netrw) much better
Plug 'wellle/targets.vim' | "Additional text targets, like `ci,`
Plug 'alvan/vim-closetag'
Plug 'honza/vim-snippets'
call plug#end()

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

autocmd VimResized * execute "normal! \<c-w>="
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
autocmd BufWritePre * %s/\s\+$//e

filetype plugin indent on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" search settings
set ignorecase | "case insensitive by default
set smartcase | "case sensitive with capital case
set hlsearch | "highlight incremental search
set incsearch | "incremental search

" indentation settings
set cindent | "smart indentation
set expandtab | "tabs convert to spaces
set tabstop=2 | "two spaces
set shiftwidth=2 | "two spaces

" color settings
"set termguicolors |
"colorscheme nightfly
"let g:lightline = { 'colorscheme': 'nightfly' }
"let g:nightflyCursorColor = 1
"let g:nightflyUnderlineMatchParen = 1

hi Comment cterm=italic
set background=dark
set termguicolors
colorscheme iceberg
let g:deepspace_italics=1


" coc extensions
let g:coc_global_extensions = [
      \ 'coc-docker',
      \ 'coc-diagnostic',
      \ 'coc-emmet',
      \ 'coc-highlight',
      \ 'coc-marketplace',
      \ 'coc-pairs',
      \ 'coc-prettier',
      \ 'coc-python',
      \ 'coc-snippets',
      \ 'coc-spell-checker',
      \ 'coc-styled-components',
      \]
