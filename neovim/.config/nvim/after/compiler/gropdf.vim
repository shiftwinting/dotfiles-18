" Last Change: 2019 nov 27

" Check if current compiler is not set
if exists("current_compiler")
  finish
endif
let current_compiler = "gropdf"

" Set compiler options
setlocal makeprg=groff\ -k\ -ms\ %:t\ \|\ pstopdf\ -i\ -o\ %:t:r.pdf
setlocal errorformat=%f:%l:\ %m
