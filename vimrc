" Vundle
" --------------------------------------------------------------------
set nocompatible
filetype off

" rtp is the runtime path.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Rykka/colorv.vim'
Bundle 'acustodioo/vim-tmux'

Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake'

Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'
Bundle 'nono/vim-handlebars'

Bundle 'mutewinter/nginx.vim'
Bundle 'hallison/vim-markdown'

" Theme bundle
Bundle 'twerth/ir_black'

" vim-scripts repos
Bundle 'L9'

Bundle 'FuzzyFinder'


" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" General Settings
" --------------------------------------------------------------------

" It is difficult to use '\' as it's position on the keyboard is non-standard
" and difficult to reach.
let mapleader=","

" Indentation
set autoindent	" Automatically indent the new line
set smartindent "si

" Scrolling
set sidescrolloff=10
set scrolloff=5
set nowrap

" Line numbering
set number
set numberwidth=4

" Window Splits
set equalalways
set splitbelow splitright
:noremap ,v :vsp^M^W^W<cr>
:noremap ,h :split^M^W^W<cr>

" Highlight cursor
set cursorline

" Searching
set hlsearch
set incsearch
set ignorecase

" Colors
set t_Co=256
"set background=dark
syntax on
colorscheme ir_black

" Key Mappings
imap jj <Esc>

filetype plugin indent on

map <S-Enter> O<Esc>
map <Enter> o<Esc>

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'

" From Vimified
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup 
set noswapfile 
