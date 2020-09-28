""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Necesary for lots of cool vim things
set nocompatible

" With a map leader it's possible to do extra key combinations
let mapleader = " " " SPACE
let maplocalleader = ","

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on

" Copy paste between vim and everything else
set clipboard+=unnamedplus

" Command-line completion on pressing <Tab>
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,[,],h,l

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" By default timeoutlen is 1000 ms
set timeoutlen=100

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Show line number and turn hybrid line numbers on
set nu rnu

" Always show tabs
set showtabline=2

" Always show current position
set ruler

" Height of the command bar, better display for messages
set cmdheight=2

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Enable highlighting of the current line
set cursorline

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" always show signcolumns
set signcolumn=yes

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes

" Add a bit extra margin to the left
set foldcolumn=2

" Enable mouse
set mouse=a

" Makes popup menu smaller
set pumheight=10

" Always display the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set utf8 as standard encoding and en_US as the standard language
set encoding=UTF-8
set fileencoding=UTF-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowritebackup
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Horizontal splits will automatically be below
set splitbelow

" Vertical splits will automatically be to the right
set splitright

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Support 256 colors
if !has('gui_running')
  set t_Co=256
endif

if (has("termguicolors"))
  set termguicolors
endif

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set guitablabel=%M\ %t
endif

" Tell vim what the background color looks like
set background=dark

set guifont=Fira\ Code

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Indent
filetype indent on

" Good auto indent
set autoindent

" Makes indenting smart
set smartindent

" Linebreak on 500 characters
set lbr
set tw=500

" Wrap lone lines
set wrap

" So that you can see `` in markdown files
set conceallevel=0

" Treat dash separated words as a word text object"
set iskeyword+=-

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
