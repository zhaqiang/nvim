" With a map leader it's possible to do extra key combinations
let mapleader = "\<Space>"
let maplocalleader = ","

" Remap VIM 0 to first non-blank character
map 0 ^

" Fast moving between buffers
map <localleader>l :bnext<cr>
map <localleader>h :bprevious<cr>

" Fast saving
map <localleader>w :w!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Fast quiting
nmap <localleader>q :<C-W>q<cr>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" I hate escape more than anything else
inoremap jk <esc>
inoremap kj <esc>

" Move to next char
imap <c-f> <right>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Better indenting
vnoremap < <gv
vnoremap > >gv
