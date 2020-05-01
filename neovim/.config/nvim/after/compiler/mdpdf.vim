" Last Change: 2020 avril 30

" Check if current compiler is not set
if exists("current_compiler")
  finish
endif
let current_compiler = "mdpdf"

" Set compiler options
" pandoc exam.md --from markdown+yaml_metadata_block --to ms -o %.pdf
setlocal makeprg=pandoc\ %:t\ --from\ markdown+yaml_metadata_block\ --to\ latex\ --toc\ -o\ %:t:r.pdf
setlocal errorformat=%f:%l:\ %m
