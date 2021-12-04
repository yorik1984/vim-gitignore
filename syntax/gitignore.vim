" Vim syntax file
" Language:   .gitignore
" Maintainer: yorik1984 <yorik1984@gmail.com>
" URL:        https://github.com/yorik1984/vim-gitignore

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syn keyword gitignoreTodo   contained TODO FIXME XXX

" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match gitignoreComment "^#.*" contains=gitignoreTodo
syn match gitignoreComment "\s#.*"ms=s+1 contains=gitignoreTodo
syn match gitignoreTild "[~]"
syn match gitignorePrefix "[\!]"
syn match gitignorePattern "[*?]"
syn match gitignoreAsteriskDouble "\*\*"
syn match gitignoreBackslash "[\\]"
syn match gitignoreSquarebracket "[\]\[]"
syn match gitignoreRange "\[\f\{1}-\f\{1}\]" contains=gitignoreSquarebracket
syn match gitignoreFile "^\(#\)\@!.*\(/\)\@<!$" contains=gitignoreRange,gitignorePattern,gitignoreTild,gitignoreBackslash,gitignorePrefix,gitignoreAsteriskDouble
syn match gitignoreDirectory "^\(#\)\@!.*\/$" contains=gitignoreRange,gitignorePattern,gitignoreTild,gitignoreBackslash,gitignorePrefix,gitignoreAsteriskDouble

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link gitignoreComment         Comment
hi def link gitignoreTodo            Todo
hi def link gitignoreDirectory       Directory
hi def link gitignoreFile            Type
hi def link gitignorePattern         SpecialChar
hi def link gitignoreAsteriskDouble  Special
hi def link gitignoreSquarebracket   Boolean
hi def link gitignoreTild            Delimiter
hi def link gitignoreBackslash       Keyword
hi def link gitignorePrefix          Operator
hi def link gitignoreRange           Number

let b:current_syntax = 'gitignore'

setlocal commentstring=#%s
