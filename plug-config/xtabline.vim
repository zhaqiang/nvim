let g:xtabline_settings = {}

let g:xtabline_settings.enable_mappings = 1
let g:xtabline_settings.tabline_modes = ['buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_lazy = 1
let g:xtabline_settings.show_right_corner = 1
let g:xtabline_settings.theme = 'codedark'

let g:xtabline_settings.indicators = {
      \ 'modified': '+',
      \ 'pinned': '[📌]',
      \ }

let g:xtabline_settings.icons = {
      \ 'pin': '📌',
      \ 'star': '*',
      \ 'book': '📖',
      \ 'lock': '🔒',
      \ 'hammer': '🔨',
      \ 'tick': '✔',
      \ 'cross': '✖',
      \ 'warning': '⚠',
      \ 'menu': '☰',
      \ 'apple': '🍎',
      \ 'linux': '🐧',
      \ 'windows': '⌘',
      \ 'git': '',
      \ 'palette': '🎨',
      \ 'lens': '🔍',
      \ 'flag': '🏁',
      \ }
