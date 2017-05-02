scriptencoding utf-8
set nocompatible

" Load vim-plug if it's not there.
if empty(glob("~/.vim/autoload/plug.vim"))
	execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs'
		\ 'https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'gabesoft/vim-ags', { 'on': 'Ags'  }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin'  }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-sensible'

call plug#end()

" Colours
if has("gui_running")
	set background=light
	colorscheme solarized
	set guifont=Menlo\ Regular:h14
else
	set background=dark
	colorscheme solarized
endif

syntax enable

" Toggle day/night background
command! DayNight call ToggleBackground()

" Toggle Vim background colour
function! ToggleBackground()
		let &background=(&background == "light" ? "dark" : "light")
endfunction

" Spaces and tabs
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

"UI Config
set number				" show line numbers
set cursorline			" hilight current line
set showmatch           " highlight matching [{()}]
set showcmd             " show command in bottom bar"
set wildmenu            " visual autocomplete for command menu"
set lazyredraw          " redraw only when we need to."

"Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set bs=2
set ai
set ruler

"Shortcuts
let mapleader = ' '
vnoremap <leader>y "*Y
set pastetoggle=<F2>
:imap jk <Esc>
