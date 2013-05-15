" Vundle
" --------------------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle is an awesome package built on top of Pathogen, which is the
" de-facto package manager for vim now.
"
" Commands:
" To install configured bundles:
" Launch vim, run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)
"
" Site: https://www.github.com/gmarik/vundle
Bundle 'gmarik/vundle'

" Command-T works so much better than NERDTree if you want to speedily open
" files!
"
" Installation Notes:
" After doing a :BundleInstall, the C extension needs to be built
" > cd <Path to this repo>/bundle/command-t/ruby/command-t
" > ruby extconf.rb
" > make
"
" Commands:
" Just use <Leader>t to open file listing and type away.
" It works best when you open vim at your root directory.
"
" At prompt
" <C-a>       move the cursor to the start (left)
" <C-e>       move the cursor to the end (right)
" <C-u>       clear the contents of the prompt
" <Tab>       change focus to the file listing
" <C-c>       to cancel
"
" There are different ways to open a file
" <CR>        open the selected file
" <C-CR>      open the selected file in a new split window
" <C-s>       open the selected file in a new split window
" <C-v>       open the selected file in a new vertical split window
" <C-t>       open the selected file in a new tab
"
" Site: https://www.github.com/wincent/Command-T
Bundle 'wincent/Command-T'

" tcomment is a comment plugin that makes commenting and uncommenting easier.
"
" Commands:
" gc<motion> | To toggle comments
" gcip | To comment inner paragraph
" <Leader>_b | Comment the visually selected paragraph as block
"
" Site: https://github.com/tomtom/tcomment_vim/blob/master/doc/tcomment.txt
Bundle 'tomtom/tcomment_vim'

" Fugitive is a very useful git wrapper by tpope!
"
" Description:
" View any blob, tree, commit, or tag in the repository with :Gedit (and
" :Gsplit, :Gvsplit, :Gtabedit, ...). Edit a file in the index and write to it
" to stage the changes. Use :Gdiff to bring up the staged version of the file
" side by side with the working tree version and use Vim's diff handling
" capabilities to stage a subset of the file's changes.
"
" Bring up the output of git status with :Gstatus. Press - to add/reset a
" file's changes, or p to add/reset --patch that mofo. And guess what :Gcommit
" does!
"
" :Gblame brings up an interactive vertical split with git blame output. Press
" enter on a line to edit the commit where the line changed, or o to open it in
" a split. When you're done, use :Gedit in the historic buffer to go back to
" the work tree version.
"
" :Gmove does a git mv on a file and simultaneously renames the buffer.
" :Gremove does a git rm on a file and simultaneously deletes the buffer.
"
" Use :Ggrep to search the work tree (or any arbitrary commit) with git grep,
" skipping over that which is not tracked in the repository. :Glog loads all
" previous revisions of a file into the quickfix list so you can iterate over
" them and watch the file evolve!
"
" :Gread is a variant of git checkout -- filename that operates on the buffer
" rather than the filename. This means you can use u to undo it and you never
" get any warnings about the file changing outside Vim. :Gwrite writes to both
" the work tree and index versions of a file, making it like git add when
" called from a work tree file and like git checkout when called from the index
" or a blob in history.
"
" Use :Gbrowse to open the current file on GitHub, with optional line range
" (try it in visual mode!). If your current repository isn't on GitHub, git
" instaweb will be spun up instead.
"
" Add %{fugitive#statusline()} to 'statusline' to get an indicator with the
" current branch in (surprise!) your statusline.
"
" Last but not least, there's :Git for running any arbitrary command, and Git!
" to open the output of a command in a temp file.)
"
" Site: https://www.github.com/tpope/vim-fugitive
Bundle 'tpope/vim-fugitive'

" vim-easymotion is an awesome plugin to move quickly to a given spot!
"
" Commands:
" Just use <Leader><Leader>w and then words will be highlighted. Go to the one
" you want to go to!
" <Leader><Leader>w to beginning of word forward
" <Leader><Leader>b to beginning of word backward
" <Leader><Leader>e to end of word forward
" <Leader><Leader>ge to end of word backward
" <Leader><Leader>f find char to the right
"
" Site: https://www.github.com/Lokaltog/vim-easymotion
Bundle 'Lokaltog/vim-easymotion'

" Powerline is the line at the bottom which tells you everything you need to
" know about a file! This one is currently in stable beta but I am going
" forward with putting it in anyway.
"
" Site: https://www.github.com/Lokaltog/powerline
Bundle 'Lokaltog/powerline'
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2   " Always show the statusline

" ColorV can be used as a color picker and works really well.
" I wish I could get insert to work. Let's see.
"
" :ColorV (<leader>cv) | Show ColorV window
" :ColorVView (<leader>cw) | Show ColorV window with color text under cursor.
" :ColorVPreview (<leader>cpp) | Preview colors in current buffer
" :ColorVEdit (<leader>ce) | Edit color text under cursor
" :ColorVName (<leader>cn) | Show color name list window.
" :ColorVInsert (<leader>cii) | Insert color with ColorV window. (Doesn't work)
"
" Site: https://github.com/Rykka/colorv.vim
Bundle 'Rykka/colorv.vim'

" Sparkup is used for quickly writing HTML!
" I wonder whether I should be using zencoding, though
"
" Some examples -
"
" div.align-left#header
" div#header + div#footer
" #header > h1{Welcome to our site}
" a[href=index.html]{Home}
" ul > li.item-$*3 > strong
" #header > ul > li < p{Footer}
"
" <C-e> to execute
" <C-n> to jump to next empty tag
"
" Site:
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" Syntax, Indent and Filetype plugin

" Some Ruby specific motions defined
"
" ]m      Go to start of next method definition.
" ]M      Go to end of next method definition.
" [m      Go to start of previous method definition.
" [M      Go to end of previous method definition.
" ]]      Go to start of next module or class definition.
" ][      Go to end of next module or class definition.
" [[      Go to start of previous module or class definition.
" []      Go to end of previous module or class definition.
"
" am      "a method", select from "def" until matching "end" keyword.
" im      "inner method", select contents of "def"/"end" block, excluding the "def" and "end" themselves.
" aM      "a class", select from "class" until matching "end" keyword.
" iM      "inner class", select contents of "class"/"end"
"
" Site: https://github.com/vim-ruby/vim-ruby/blob/master/doc/vim-ruby.txt
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/php.vim--Hodge'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hallison/vim-markdown'
Bundle 'derekwyatt/vim-scala'

Bundle 'vim-scripts/indenthtml.vim'
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

Bundle 'sukima/xmledit'

Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'

Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'
Bundle 'nono/vim-handlebars'

Bundle 'mutewinter/nginx.vim'
Bundle 'tpope/vim-git'

" Proper Ending script
Bundle 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
au FileType html let b:delimitMate_matchpairs = "(:),[:],{:}"

" Theme bundle
Bundle 'twerth/ir_black'

" Taglist.vim
" Brilliant for use with ctags!
"
" Commands:
" :TlistToggle
Bundle 'vim-scripts/taglist.vim'

" vim-conque is a terminal editor
"
" Commands:
" Type :ConqueTerm <command> to run your command in vim, for example:
"
" :ConqueTerm bash
" :ConqueTerm mysql -h localhost -u joe -p sock_collection
" :ConqueTerm Powershell.exe
" :ConqueTerm C:\Python27\python.exe
"
" To open ConqueTerm in a new horizontal or vertical buffer use:
"
" :ConqueTermSplit <command>
" :ConqueTermVSplit <command>
" :ConqueTermTab <command>
"
" All text typed in insert mode will be sent to your shell.
"
" Site: http://www.vim.org/scripts/script.php?script_id=2771
Bundle 'rson/vim-conque'
Bundle 'skwp/vim-ruby-conque'

" vim-gitgutter
" See which lines have changed inside Vim itself.
Bundle 'airblade/vim-gitgutter'
" The sign column has grey as bg which I don't like. This shows up when the
" git gutter is enabled for showing diff of head and current inside vim.
" The following command changes the color back to black to match in with the
" rest.
"
" I had to put this inside ir_black as otherwise I used to get a flash of gray
" before it became black.
" highlight clear SignColumn

" Better to always have the sign column around.
let g:gitgutter_sign_column_always = 1

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

" Graphical Movement
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge

" It is difficult to use '\' as it's position on the keyboard is non-standard
" and difficult to reach.
let mapleader=","

" It hides buffers instead of closing them.
set hidden

" No bells
set visualbell
set noerrorbells

" Showing characters
set listchars=tab:>.,trail:%,extends:#,nbsp:.

" Paste Toggle
set pastetoggle=<F2>

" Indentation
set autoindent	" Automatically indent the new line
set smartindent " si

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
set wildignore=*.swp,*.bak,*.pyc,*.class

" Allow saving even when not in sudo mode
cmap w!! w !sudo tee % >/dev/null

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Clearing highlighted searches
nmap <silent> ,/ :nohlsearch<CR>

" Colors
set t_Co=256
"set background=dark
syntax on
silent! colorscheme ir_black

" Key Mappings
imap jj <Esc>

map <S-Enter> O<Esc>
map <Enter> o<Esc>

set encoding=utf-8 " Necessary to show unicode glyphs

" From Vimified
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup
set noswapfile

set backspace=indent,eol,start

set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set smarttab
set expandtab

au FileType python set tabstop=4
au FileType python set softtabstop=4
au FileType python set shiftwidth=4

au FileType markdown set wrap lbr formatoptions=l

" RSPEC
nmap <silent> <Leader>rcrr :call RunRubyCurrentFileConque()<CR>
nmap <silent> <Leader>rcss :call RunRspecCurrentFileConque()<CR>
nmap <silent> <Leader>rcll :call RunRspecCurrentLineConque()<CR>
nmap <silent> <Leader>rccc :call RunCucumberCurrentFileConque()<CR>
nmap <silent> <Leader>rccl :call RunCucumberCurrentLineConque()<CR>
nmap <silent> <Leader>rcRR :call RunRakeConque()<CR>
nmap <silent> <Leader>rcrl :call RunLastConqueCommand()<CR>

nnoremap <silent> <C-s> :call RelatedSpecVOpen()<CR>
nnoremap <silent> ,<C-s> :call RelatedSpecOpen()<CR>
