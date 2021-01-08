" Last Change: 2020 Dec 08
" Vim frama-c
if exists("current_compiler")
  finish
endif
let current_compiler = "frama-c"

CompilerSet makeprg=frama-c\ -rte\ -eva\ -wp\ %:p
CompilerSet errorformat=%W[%o]\ %f:%l:\ Warning:\ ,%C\ %m,[%o]\ %f:%l:\ %m

