" ========================================================================
" Vundle stuff
" ========================================================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-haml'
Bundle 'jQuery'

Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'mattn/emmet-vim'
" Bundle 'wincent/Command-T'

" Mappings 
let mapleader = ","
nmap <silent> <leader>d <Plug>DashSearch

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>


" ⌘c/⌘v from https://github.com/mathiasbynens/dotfiles

" Make Vim more useful
set nocompatible
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Don’t add empty newlines at the end of files
set binary
set noeol
" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
" when we reload, tell vim to restore the cursor to the saved position
augroup JumpCursorOnEdit
 au!
 autocmd BufReadPost *
 \ if expand("<afile>:p:h") !=? $TEMP |
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ let JumpCursorOnEdit_foo = line("'\"") |
 \ let b:doopenfold = 1 |
 \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
 \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
 \ let b:doopenfold = 2 |
 \ endif |
 \ exe JumpCursorOnEdit_foo |
 \ endif |
 \ endif
 " Need to postpone using "zv" until after reading the modelines.
 autocmd BufWinEnter *
 \ if exists("b:doopenfold") |
 \ exe "normal zv" |
 \ if(b:doopenfold > 1) |
 \ exe "+".1 |
 \ endif |
 \ unlet b:doopenfold |
 \ endif
augroup END
syntax enable
