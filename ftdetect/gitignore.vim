" File:         gitignore.vim
" Description:  .gitignore plugin for Vim
" Author:       gisphm <phmfk@hotmail.com>
" URL:          https://github.com/gisphm/vim-gitignore

augroup gitignore
    autocmd!
    autocmd BufNewFile,BufRead *.gitignore set filetype=gitignore
augroup end
