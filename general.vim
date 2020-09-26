" Necesary for lots of cool vim things
set nocompatible

" With a map leader it's possible to do extra key combinations
let mapleader = " "
let maplocalleader = ","

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Show line number and turn hybrid line numbers on
set nu rnu

" yank and paste using y and p
set clipboard=unnamed

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime
