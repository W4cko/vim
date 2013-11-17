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

" Always a statusline
set laststatus=2

" Reload changed files
set autoread

" Fix timeouts
set timeout timeoutlen=1000 ttimeoutlen=100

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

" Turn folding off
set foldmethod=manual
set nofoldenable

" Ignore some file extensions
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.so

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

" Invisible chars
set list
set listchars=tab:›\ ,trail:·

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
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" Misc mappings
nmap <f1> <C-w>w
nmap <f2> :tabprevious<CR>
nmap <f3> :tabnew<CR>
nmap <leader><f1> :NERDTreeToggle<CR>

" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x

" Make vaa select the entire file...
vmap aa VGo1G

" Puts new vsplit windows to the right of the current
set splitright

" Puts new split windows to the bottom of the current
set splitbelow

" pastetoggle (sane indentation on pastes)
set pastetoggle=<F12>

" Enable mouse
set mouse=a

" No swap files
set noswapfile

" When shifting, retain selection over multiple shifts...
vmap <expr> > KeepVisualSelection(">")
vmap <expr> < KeepVisualSelection("<")

function! KeepVisualSelection(cmd)
    set nosmartindent
    if mode() ==# "V"
        return a:cmd . ":set smartindent\<CR>gv"
    else
        return a:cmd . ":set smartindent\<CR>"
    endif
endfunction

" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Airline
let g:airline_powerline_fonts = 1

" CtrlP
let g:ctrlp_show_hidden = 1

" NERDTree ignore
let NERDTreeIgnore=['\.o$', '\~$', '\.class$', '\.so$']

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Colors
set t_Co=256
syntax on
colorscheme wombat256mod

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Transparent background
" hi Normal 		guibg=NONE 		ctermbg=NONE
" hi NonText 		guibg=NONE 		ctermbg=NONE
" hi LineNr 		guibg=NONE 		ctermbg=NONE
hi SpecialKey ctermbg=NONE

