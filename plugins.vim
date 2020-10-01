" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Make sure you use single quotes

  " Enable repeating supported plugin maps with "."
  " https://github.com/tpope/vim-repeat
  Plug 'tpope/vim-repeat'


  " The fancy start screen for Vim
  " https://github.com/mhinz/vim-startify
  Plug 'mhinz/vim-startify'

  " A dark Vim/Neovim color scheme inspired by Atom's One Dark syntax theme
  " https://github.com/joshdick/onedark.vim
  Plug 'joshdick/onedark.vim'

  " A light and configurable statusline/tabline plugin for Vim
  " https://github.com/itchyny/lightline.vim
  Plug 'itchyny/lightline.vim'

  " Tabline customization with buffer filtering
  " https://github.com/mg979/vim-xtabline
  Plug 'mg979/vim-xtabline'

  " Delete buffers and close files in Vim without closing your windows or messing up your layout
  " https://github.com/moll/vim-bbye
  Plug 'moll/vim-bbye'

  " Swap your windows without ruining your layout
  " https://github.com/wesQ3/vim-windowswap
  Plug 'wesQ3/vim-windowswap'

  " Vim plugin that shows keybindings in popup
  " https://github.com/liuchengxu/vim-which-key
  Plug 'liuchengxu/vim-which-key'

  " Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode
  " https://github.com/neoclide/coc.nvim
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  " Fuzzy finder
  " https://github.com/junegunn/fzf.vim
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " A Git wrapper so awesome, it should be illegal
  " https://github.com/tpope/vim-fugitive
  Plug 'tpope/vim-fugitive'

  " A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks
  " https://github.com/airblade/vim-gitgutter
  Plug 'airblade/vim-gitgutter'

  " A git commit browser in Vim
  " https://github.com/junegunn/gv.vim
  Plug 'junegunn/gv.vim'

  " Vim and Neovim plugin to reveal the commit messages under the cursor
  " https://github.com/rhysd/git-messenger.vim
  Plug 'rhysd/git-messenger.vim'

  " GitHub extension for fugitive.vim
  " https://github.com/tpope/vim-rhubarb
  Plug 'tpope/vim-rhubarb'

  " vim-snipmate default snippets (Previously snipmate-snippets)
  " https://github.com/honza/vim-snippets
  Plug 'honza/vim-snippets'

  " A vim plugin to display the indention levels with thin vertical lines
  " https://github.com/Yggdroot/indentLine
  Plug 'Yggdroot/indentLine'

  " Better whitespace highlighting for Vim
  " https://github.com/ntpeters/vim-better-whitespace
  Plug 'ntpeters/vim-better-whitespace'

  " Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
  " https://github.com/ryanoasis/vim-devicons
  Plug 'ryanoasis/vim-devicons' " Always load the vim-devicons as the very last one
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
