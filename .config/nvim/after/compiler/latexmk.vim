" Vim latexmk integration
if exists("current_compiler")
  finish
endif
let current_compiler = "latexmk"

CompilerSet makeprg=latexmk\ -pdf\ %:t:r
CompilerSet errorformat=%f:%l:\ %m
