" Vim pylint integration
if exists("current_compiler")
  finish
endif
let current_compiler = "pylint"

CompilerSet makeprg=pdflatex\ -file-line-error-style\ -interaction=nonstopmode\ %:p
CompilerSet errorformat=%f:%l:\ %m
