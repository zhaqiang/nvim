" ref: https://vi.stackexchange.com/questions/12520/markdown-in-neovim-which-plugin-sets-conceallevel-2
autocmd BufNewFile,BufRead *.md let g:indentLine_setConceal = 0

" ref: https://github.com/Yggdroot/indentLine/issues/172
autocmd Filetype json let g:indentLine_setConceal = 0
