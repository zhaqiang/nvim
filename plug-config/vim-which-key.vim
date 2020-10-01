" NOTE: Use `BS` to show the upper level mappings

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" No floating window
let g:which_key_use_floating_win = 0

highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
" Coc Search & refactor
" nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
" let g:which_key_map['?'] = 'search word'

" Fast searching
let g:which_key_map['/'] = [ ':RG'                    , 'global search' ]

" f is for files
let g:which_key_map.f = {
      \ 'name' : '+files',
      \ 'e' : [':CocCommand explorer', 'file explorer'],
      \ 'E' : [':edit $MYVIMRC', 'open init.vim'],
      \ 'R' : [':source $MYVIMRC', 'reload init.vim']
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':RG'                    , 'global text'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }

" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows',
      \ '=' : ['<C-W>=', 'balance windows'],
      \ '-' : ['<C-W>s', 'split below'],
      \ '|' : ['<C-W>v', 'split right'],
      \ 'd' : ['<C-W>c', 'delete window'],
      \ 'H' : ['<C-W>5<', 'expand window left'],
      \ 'J' : [':resize +5', 'expand window below'],
      \ 'K' : [':resize -5', 'expand window up'],
      \ 'L' : ['<C-W>5>', 'expand window right'],
      \ 'w' : ['<C-W>w', 'other window']
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
