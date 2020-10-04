let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['gitbranch', 'readonly', 'filename']]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'GitBranch'
      \ },
      \ }

function! GitBranch()
  return '' . FugitiveHead()
endfunction
