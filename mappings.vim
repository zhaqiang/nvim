
" Remap VIM 0 to first non-blank character
map 0 ^

" Fast moving between buffers
map <localleader>l :bnext<cr>
map <localleader>h :bprevious<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Fast saving
nmap <localleader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Fast quiting
nmap <localleader>q :<C-W>q<cr>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z

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
imap <c-f> <esc>la

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
vmap <localleader>w :w!<cr>

" Pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Better indenting
vnoremap < <gv
vnoremap > >gv
