" Last Change: 2020 avril 23

" Check if current compiler is not set
if exists("current_compiler")
  finish
endif
let current_compiler = "gropdf"

" Set compiler options
setlocal makeprg=groff\ -k\ -ms\ -Tpdf\ %:t\ >\ %:t:r.pdf
setlocal errorformat=%f:%l:\ %m
