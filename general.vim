" Ref: https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=999

" Enable filetype plugins
filetype plugin on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Copy paste between vim and everything else
set clipboard+=unnamedplus

" Command-line completion on pressing <Tab>
set wildmenu

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

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Show line number and turn hybrid line numbers on
set nu rnu

" Always show tabs
set showtabline=2

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position
set ruler

" Height of the command bar, better display for messages
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hidden

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
set foldcolumn=1

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

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Enable theming support
if (has("termguicolors"))
  " ref: https://github.com/tmux/tmux/issues/1246
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  " Support 256 colors
  set t_Co=256
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Stop newline continution of comments
set formatoptions-=cro
