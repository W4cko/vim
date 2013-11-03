" Disable Vi compatibility
set nocompatible

" Pathogen
execute pathogen#infect()

" Leader key
let mapleader=","

" UTF-8
set encoding=utf-8

" Line numbers
set number

" Highlight search
set hlsearch

" Case insensitive search
set ignorecase

" Be sensitive when there is a capital letter
set smartcase

" Search as we type the search query
set incsearch

" Reload changed files
set autoread

" Disable line wrap for long lines
set nowrap

" Copy indentation form previous line
set autoindent

" Tab width
set tabstop=4

" Shift width
set shiftwidth=4

" Hides buffers instead of closing them
set hidden

" Show matching parenthesis
set showmatch

" Commands and search history
set history=1000

" Undo levels
set undolevels=1000

" Ignore some file extensions
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o

" Don't bip
" set visualbell
set noerrorbells

" Highlight current line
set cursorline

" Display current cursor position
set ruler

" Use emacs-style tab completion when selecting files, etc
set wildmode=longest,list

" Make tab completion for files/buffers act like bash
set wildmenu

" Always show tabline
set showtabline=2

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep more context when scrolling off the end of a buffer
set scrolloff=3

" Enable file type detection.
filetype plugin indent on

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Backups
" set backup
" set backupdir=~/.vim/tmp/backup
" set directory=~/.vim/tmp/swap

" Disable arrow keys
" map   <Up>     <Nop>
" map   <Down>   <Nop>
" map   <Left>   <Nop>
" map   <Right>  <Nop>
" imap  <Up>     <Nop>
" imap  <Down>   <Nop>
" imap  <Left>   <Nop>
" imap  <Right>  <Nop>

" Misc mappings
nmap <f1> :tabprevious<CR>
nmap <f2> :tabnew<CR>
nmap <f3> :NERDTreeToggle<CR>
nmap <f4> :TagbarToggle<CR>
nmap <f5> <C-w><C-w>

" Puts new vsplit windows to the right of the current
set splitright

" Puts new split windows to the bottom of the current
set splitbelow

" pastetoggle (sane indentation on pastes)
set pastetoggle=<F12>

" Allow mouse (duh)
set mouse=a

" No swap files
set noswapfile

" AMPL syntax for .mod files
au BufRead,BufNewFile *.mod set filetype=ampl

" NERDTree ignore
let NERDTreeIgnore=['\.o$', '\~$', '\.class$']

" Colors
set t_Co=256
syntax on
colorscheme jellybeans

" Color scheme overrides
hi Normal 		guibg=NONE 		ctermbg=NONE
hi NonText 		guibg=NONE 		ctermbg=NONE
hi LineNr 		guibg=NONE 		ctermbg=NONE
hi VertSplit    ctermfg=black   ctermbg=black    cterm=NONE
hi TabLineFill 	ctermbg=white
hi TabLine 		ctermbg=white
hi TabLineSel 	ctermbg=NONE 	ctermfg=white 
