" NOTE: Use `BS` to show the upper level mappings

" Map leader to which_key
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

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

let g:which_key_map.1 = 'which_key_ignore'
let g:which_key_map.2 = 'which_key_ignore'
let g:which_key_map.3 = 'which_key_ignore'
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'
let g:which_key_map.0 = 'which_key_ignore'

" Single mappings
let g:which_key_map['/'] = [':RG'                   , 'global search']
let g:which_key_map['e'] = [':CocCommand explorer'  , 'file explorer']
let g:which_key_map['d'] = [':Bdelete'              , 'delete buffer']
let g:which_key_map['q'] = [':q'                    , 'quit']
let g:which_key_map['Q'] = [':qall!'                , 'quit all!']

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions'                          ,
      \ 'c' : [':HexokinaseToggle'                   , 'toggle colorizer']     ,
      \ 'e' : [':CocCommand explorer'                , 'file explorer']        ,
      \ 'E' : [':edit $MYVIMRC'                      , 'open init.vim']        ,
      \ 'h' : [':checkhealth'                        , 'check health']         ,
      \ 'm' : [':CocList marketplace'                , 'coc marketplace']      ,
      \ 'M' : ['mmHmt:%s/<C-V><cr>//ge<cr>''tzt''m'  , 'Remove ^M']            ,
      \ 'R' : [':source $MYVIMRC'                    , 'reload init.vim']      ,
      \ 's' : [':nohlsearch'                         , 'no highlight search']  ,
      \ 't' : [':FloatermToggle'                     , 'terminal']             ,
      \ 'u' : [':UndotreeToggle'                     , 'undo tree']            ,
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer'       ,
      \ 'a' : [':bufdo bd'       , 'close all buffers']  ,
      \ 'd' : [':bdelete'        , 'delete buffer']      ,
      \ 'e' : [':e ~/buffer'     , 'new buffer']         ,
      \ 'f' : ['bfirst'          , 'first buffer']       ,
      \ 'h' : ['Startify'        , 'home buffer']        ,
      \ 'l' : ['blast'           , 'last buffer']        ,
      \ 'n' : ['bnext'           , 'next buffer']        ,
      \ 'm' : [':e ~/buffer.md'  , 'new md buffer']      ,
      \ 'p' : ['bprevious'       , 'previous buffer']    ,
      \ 's' : ['Buffers'         , 'search in buffers']  ,
      \ 'w' : [':Bwipeout'       , 'wipeout buffer']
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git'                          ,
      \ 'a' : [':Git add %'                      , 'add current']          ,
      \ 'A' : [':Git add .'                      , 'add all']              ,
      \ 'b' : [':Git blame'                      , 'blame']                ,
      \ 'B' : [':GBrowse'                        , 'browse']               ,
      \ 'c' : [':Git diff --cached'              , 'diff cached']          ,
      \ 'C' : [':Git commit'                     , 'commit']               ,
      \ 'd' : [':Gdiffsplit'                     , 'diff split']           ,
      \ 'D' : [':Git diff'                       , 'diff']                 ,
      \ 'g' : [':GGrep'                          , 'git grep']             ,
      \ 'h' : [':GitGutterLineHighlightsToggle'  , 'highlight hunks']      ,
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'    , 'preview hunk']         ,
      \ 'j' : ['<Plug>(GitGutterNextHunk)'       , 'next hunk']            ,
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'       , 'prev hunk']            ,
      \ 'l' : [':Git log'                        , 'log']                  ,
      \ 'm' : ['<Plug>(git-messenger)'           , 'message']              ,
      \ 'p' : [':Git push'                       , 'push']                 ,
      \ 'P' : [':Git pull'                       , 'pull']                 ,
      \ 'r' : [':GRemove'                        , 'remove']               ,
      \ 's' : [':Gstatus'                        , 'status']               ,
      \ 'S' : ['<Plug>(GitGutterStageHunk)'      , 'stage hunk']           ,
    \ 't' : [':GitGutterSignsToggle'           , 'toggle signs']         ,
    \ 'u' : ['<Plug>(GitGutterUndoHunk)'       , 'undo hunk']            ,
    \ 'v' : [':GV'                             , 'view commits']         ,
    \ 'V' : [':GV!'                            , 'view buffer commits']  ,
    \ }

" l is for LSP (language server protocol)
let g:which_key_map.l = {
    \ 'name' : '+lsp'                             ,
    \ '.' : [':CocConfig'                         , 'config']           ,
    \ ';' : ['<Plug>(coc-refactor)'               , 'refactor']         ,
    \ 'a' : ['<Plug>(coc-codeaction)'             , 'line action']      ,
    \ 'A' : ['<Plug>(coc-codeaction-selected)'    , 'selected action']  ,
    \ 'b' : [':CocNext'                           , 'next action']      ,
    \ 'B' : [':CocPrev'                           , 'prev action']      ,
    \ 'c' : [':CocList commands'                  , 'commands']         ,
    \ 'd' : ['<Plug>(coc-definition)'             , 'definition']       ,
    \ 'D' : ['<Plug>(coc-declaration)'            , 'declaration']      ,
    \ 'e' : [':CocList extensions'                , 'extensions']       ,
    \ 'f' : ['<Plug>(coc-format-selected)'        , 'format selected']  ,
    \ 'F' : ['<Plug>(coc-format)'                 , 'format']           ,
    \ 'h' : ['<Plug>(coc-float-hide)'             , 'hide']             ,
    \ 'i' : ['<Plug>(coc-implementation)'         , 'implementation']   ,
    \ 'I' : [':CocList diagnostics'               , 'diagnostics']      ,
    \ 'j' : ['<Plug>(coc-float-jump)'             , 'float jump']       ,
    \ 'l' : ['<Plug>(coc-codelens-action)'        , 'code lens']        ,
    \ 'n' : ['<Plug>(coc-diagnostic-next)'        , 'next diagnostic']  ,
    \ 'N' : ['<Plug>(coc-diagnostic-next-error)'  , 'next error']       ,
    \ 'o' : [':Vista!!'                           , 'outline']          ,
    \ 'O' : [':CocList outline'                   , 'outline']          ,
    \ 'p' : ['<Plug>(coc-diagnostic-prev)'        , 'prev diagnostic']  ,
    \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'  , 'prev error']       ,
    \ 'q' : ['<Plug>(coc-fix-current)'            , 'quickfix']         ,
    \ 'r' : ['<Plug>(coc-references)'             , 'references']       ,
    \ 'R' : ['<Plug>(coc-rename)'                 , 'rename']           ,
    \ 's' : [':CocList -I symbols'                , 'references']       ,
    \ 'S' : [':CocList snippets'                  , 'snippets']         ,
    \ 't' : ['<Plug>(coc-type-definition)'        , 'type definition']  ,
    \ 'u' : [':CocListResume'                     , 'resume list']      ,
    \ 'U' : [':CocUpdate'                         , 'update CoC']       ,
    \ 'z' : [':CocDisable'                        , 'disable CoC']      ,
    \ 'Z' : [':CocEnable'                         , 'enable CoC']       ,
    \ }

" T is for Terminal
let g:which_key_map.T = {
      \ 'name' : '+terminal'                               ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'  , 'terminal']  ,
      \ 'f' : [':FloatermNew fzf'                          , 'fzf']       ,
      \ 'g' : [':FloatermNew lazygit'                      , 'git']       ,
      \ 'd' : [':FloatermNew lazydocker'                   , 'docker']    ,
      \ 'n' : [':FloatermNew node'                         , 'node']      ,
      \ 'N' : [':FloatermNew nnn'                          , 'nnn']       ,
      \ 'p' : [':FloatermNew python'                       , 'python']    ,
      \ 'm' : [':FloatermNew lazynpm'                      , 'npm']       ,
      \ 'r' : [':FloatermNew ranger'                       , 'ranger']    ,
      \ 't' : [':FloatermToggle'                           , 'toggle']    ,
      \ 'y' : [':FloatermNew ytop'                         , 'ytop']      ,
      \ 's' : [':FloatermNew ncdu'                         , 'ncdu']
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search'          ,
      \ '/' : [':History/'          , 'history']             ,
      \ ';' : [':Commands'          , 'commands']            ,
      \ 'b' : [':BLines'            , 'current buffer']      ,
      \ 'B' : [':Buffers'           , 'open buffers']        ,
      \ 'c' : [':Commits'           , 'commits']             ,
      \ 'C' : [':BCommits'          , 'buffer commits']      ,
      \ 'f' : [':Files'             , 'files']               ,
      \ 'g' : [':GFiles'            , 'git files']           ,
      \ 'G' : [':GFiles?'           , 'modified git files']  ,
      \ 'h' : [':History'           , 'file history']        ,
      \ 'H' : [':History:'          , 'command history']     ,
      \ 'l' : [':Lines'             , 'lines']               ,
      \ 'm' : [':Marks'             , 'marks']               ,
      \ 'M' : [':Maps'              , 'normal maps']         ,
      \ 'p' : [':Helptags'          , 'help tags']           ,
      \ 'P' : [':Tags'              , 'project tags']        ,
      \ 's' : [':CocList snippets'  , 'snippets']            ,
      \ 'S' : [':Colors'            , 'color schemes']       ,
      \ 't' : [':RG'                , 'global text']         ,
      \ 'T' : [':BTags'             , 'buffer tags']         ,
      \ 'w' : [':Windows'           , 'search windows']      ,
      \ 'y' : [':Filetypes'         , 'file types']          ,
      \ 'z' : [':FZF'               , 'FZF']                 ,
      \ }

" w is for windows
let g:which_key_map.w = {
      \ 'name' : '+windows'                         ,
      \ '=' : ['<C-W>='                             , 'balance windows']      ,
      \ '-' : ['<C-W>s'                             , 'split below']          ,
      \ '|' : ['<C-W>v'                             , 'split right']          ,
      \ 'd' : ['<C-W>c'                             , 'delete window']        ,
      \ 'H' : ['<C-W>5<'                            , 'expand window left']   ,
      \ 'J' : [':resize +5'                         , 'expand window below']  ,
      \ 'K' : [':resize -5'                         , 'expand window up']     ,
      \ 'L' : ['<C-W>5>'                            , 'expand window right']  ,
      \ 'p' : [':call WindowSwap#DoWindowSwap()'    , 'do win swap']          ,
      \ 'y' : [':call WindowSwap#MarkWindowSwap()'  , 'mark win swap']        ,
      \ 'm' : [':call WindowSwap#EasyWindowSwap()'  , 'move window']          ,
      \ 'w' : ['<C-W>w'                             , 'other window']
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
