set nocompatible 		" be iMproved, required
filetype off			"required

"set the runtime path to include Vunlde and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin for ctrlp
Plugin 'kien/ctrlp.vim'
"Nerd commenter
Plugin 'scrooloose/nerdcommenter'
"Raichoo plugin for purescript
Plugin 'raichoo/purescript-vim'
"Plugin for purescript error check
Plugin 'frigoeu/psc-ide-vim'
"Plugin for syntastic 
Plugin 'vim-syntastic/syntastic'
"Plugin for molakai color theme
Plugin 'tomasr/molokai'
"Plugin for tagbar tagbar displays classes and functions in current file
Plugin 'majutsushi/tagbar'
"Plugin for airling - bar at the bottom of the screen which shows current mode
"line number 
Plugin 'bling/vim-airline'
"Themes ofr vim-airline
Plugin 'vim-airline/vim-airline-themes'
"Nerdtree
Plugin 'scrooloose/nerdtree'


call vundle#end()
filetype plugin on
"For buttom status bar
set laststatus=2
"For airline
nnoremap <F8> :TagbarToggle <CR>
"For Tabgar shortcut key mapping 
let g:NERDCommentEmptyLines = 1
"Allow commenting and invertin empty lines(useful when commenting a region
let g:NERDTrimTrailingWhitespae = 1
"Enagle trimming of trailing whitespace when uncommenting
set number
colorscheme molokai
"let g:psc_ide_syntastic_mode = 0
set backspace=indent,eol,start
"For purescript
syntax on
filetype on
filetype plugin indent on
let g:purescript_indent_if = 3
let g:purescript_indent_case = 5
let g:purescript_indent_let = 4
let g:purescript_indent_where = 6
let g:purescript_indent_do = 3
"For airline-theme
let g:airline_theme='dark'
"set omnifunc=syntaxcomplete#Complete
"Nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Below code is for createing skeleton for file with .java type
:autocmd BufNewFile *.java call NewFile()
function! NewFile()
	silent! 0r $HOME/.vim/skeleton.java
	%s/TODO/\=expand("%:t:r")
	%s/<date time>/\=strftime("%c")
endfunction


