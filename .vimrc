set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

set ignorecase
set smartcase

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
syntax on


colorscheme onedark 
set number
set scrolloff=6
"set autoindent
set whichwrap+=<,>,h,l,[,]
set clipboard=unnamed
set backspace=indent,eol,start
set ttimeoutlen=0

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <Nop>
"inoremap jj <Esc>

call vundle#begin()
Plugin 'mattn/emmet-vim'
Plugin 'matchit.zip'
Plugin 'morhetz/gruvbox'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'haishanh/night-owl.vim'
Plugin 'juanedi/predawn.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-startify'
call vundle#end()            " required
filetype plugin indent on    " required

let g:polyglot_disabled = ['graphql']

let g:hardtime_default_on = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

map <silent> <C-n> :NERDTreeToggle<CR>

" Set tab to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Open NERDTree if vim is opening a directory
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enable true color for vim on tmux
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
