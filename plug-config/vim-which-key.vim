" NOTE: Use `BS` to show the upper level mappings

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings

" f is for files
let g:which_key_map.f = {
      \ 'name' : '+files',
      \ 'e' : [':CocCommand explorer', 'file explorer'],
      \ 'E' : [':edit $MYVIMRC', 'open init.vim'],
      \ 'R' : [':source $MYVIMRC', 'reload init.vim']
      \ }

" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows',
      \ '=' : ['<C-W>=', 'balance windows'],
      \ '-' : ['<C-W>s', 'split below'],
      \ '|' : ['<C-W>v', 'split right']
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
