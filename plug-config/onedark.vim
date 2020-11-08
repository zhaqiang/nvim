if (has("autocmd"))
  augroup colorextend
    autocmd!
    " Make `Function`s bold in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
    " Override the `Statement` foreground color in 256-color mode
    autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
    " Override the `Identifier` background color in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
  augroup END
endif

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

try
  colorscheme onedark
catch
endtry

let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
