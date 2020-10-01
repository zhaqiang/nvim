" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Make sure you use single quotes

  " The fancy start screen for Vim
  " https://github.com/mhinz/vim-startify
  Plug 'mhinz/vim-startify'

  " A dark Vim/Neovim color scheme inspired by Atom's One Dark syntax theme
  " https://github.com/joshdick/onedark.vim
  Plug 'joshdick/onedark.vim'

  " A light and configurable statusline/tabline plugin for Vim
  " https://github.com/itchyny/lightline.vim
  Plug 'itchyny/lightline.vim'

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

  " fugitive.vim: A Git wrapper so awesome, it should be illegal
  " https://github.com/tpope/vim-fugitive
  Plug 'tpope/vim-fugitive'

  " UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips
  " https://github.com/SirVer/ultisnips
  Plug 'SirVer/ultisnips'

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
