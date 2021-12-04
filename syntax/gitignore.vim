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
syn match gitignoreComment +^#.*+ contains=gitignoreTodo
syn match gitignoreComment +\s#.*+ms=s+1 contains=gitignoreTodo
syn match gitignoreTild +[~]+ contained
syn match gitignorePrefix +[\!]+ contained
syn match gitignorePattern +[*?]+ contained
syn match gitignoreAsteriskDouble +\*\*+ contained
syn match gitignoreBackslash +[\\]+ contained
syn match gitignoreSlash +[/]+ contained
syn match gitignoreSquarebracket +[\]\[]+ contained
syn match gitignoreRange +\[\f\{1}-\f\{1}\]+ contained contains=gitignoreSquarebracket
syn match gitignoreExclude +\!\f\{}\!+ contained contains=gitignorePrefix
syn match gitignoreDirectory +^\(#\)\@!.*\/+ contains=gitignoreRange,gitignorePattern,gitignoreTild,gitignoreBackslash,gitignoreAsteriskDouble,gitignoreExclude,gitignorePrefix
syn match gitignoreFile +^\(#\)\@!.*\(/\)\@<!$+ contains=gitignoreRange,gitignorePattern,gitignoreTild,gitignoreBackslash,gitignoreAsteriskDouble,gitignoreSlash,gitignoreExclude,gitignoreDirectory

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link gitignoreComment         Comment
hi def link gitignoreTodo            Todo
hi def link gitignoreDirectory       Directory
hi def link gitignoreFile            Type
hi def link gitignorePattern         SpecialChar
hi def link gitignoreAsteriskDouble  Keyword
hi def link gitignoreSquarebracket   Delimiter
hi def link gitignoreTild            Directory
hi def link gitignoreBackslash       Special
hi def link gitignoreSlash           Directory
hi def link gitignorePrefix          Delimiter
hi def link gitignoreExclude         String
hi def link gitignoreRange           Number

let b:current_syntax = 'gitignore'

setlocal commentstring=#%s
