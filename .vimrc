" Initialize pathogen
execute pathogen#infect()

" Set map leader
let mapleader = ","

" Syntax enable
syntax enable

" Set indentation default length
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

" Identation for different file types
autocmd Filetype python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd Filetype php setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd Filetype javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Set line number
set number

" Highlight current line
set cursorline

" Load filetype-specific indent file
filetype indent on

" Display possible choices
set wildmenu

" Redraw whenever we need to
set lazyredraw

" Highlighting paratheses match
set showmatch

" Search as characters are being entered
set incsearch

" Highlight matches
set hlsearch

" Code folding
" set foldenable

" Fold based on indentation
" set foldmethod=indent

" Set ruler
set colorcolumn=80

" Indentation guides
set listchars=tab:\|\ 
set list

" Set dark background
set background=light

" Resolve the issue about backspace
set backspace=indent,eol,start

" Shortcut for toggling dark/light background
nnoremap tf :set background=light<CR>
nnoremap td :set background=dark<CR>

" Set encoding
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" NERDTree's width
let g:NERDTreeWinSize=42

" Show hidden files
let NERDTreeShowHidden=1

" Tab navigation
nnoremap tj  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap tn  :tabnew<CR>
nnoremap tx  :tabclose<CR>

" Recommended setting for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
let g:airline_powerline_fonts = 1

" Set ignore case-sensitive
set ic

" Splits and Tabs navigation
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l
nnoremap gr :Tabmerge 
nnoremap gR <C-w>T
nnoremap gL <C-w>L
nnoremap gH <C-w>H

" Javadoc comment
set formatoptions+=r

" Java Compile and Run
nnoremap yj  :!clear; javac %; java %:r; rm *.class<CR>

" C Compile and Run
nnoremap yc  :!clear; gcc %; ./a.out; rm a.out<CR>

" C Compile and Run
nnoremap yv  :!clear; g++ -std=c++11 -DLOCAL %; ./a.out; rm a.out<CR>

" C Compile and Run
nnoremap yb  :!clear; g++ -std=c++11 %; ./a.out; rm a.out;<CR>

" Python Run
nnoremap yp  :!clear;python %<CR>

" Auto indent after newline
imap <C-Return> <CR><CR><C-o>k<Tab>

" Avoid escape
inoremap jj <ESC>

" Colorscheme
colo solarized

" Enable autoindent
set autoindent

" Theme for Airline
let g:airline_theme='solarized'

" ctrlp activation
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Insert timestamp
inoremap <F5> <C-R>=strftime("%c")<CR>

" Indent Line
set listchars=tab:\|\ 
set list

" Ctags configuration
let g:tagbar_ctags_bin='/usr/bin/ctags'
" let g:tagbar_width=30
noremap <C-j> :TagbarToggle<CR>

" Toggle paste and no paste
noremap<C-o>p : set paste<CR>
noremap<C-o>n : set nopaste<CR>

