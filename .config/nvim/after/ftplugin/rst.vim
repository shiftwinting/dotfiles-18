function! s:ResizeHeading(char) abort
    normal mm
    exe "1,$-1g/^" . a:char . "\\+$/normal ddkyypVr" . a:char
    normal `m
endfunction

function! ResizeHeadings() abort
    call s:ResizeHeading("=")
    call s:ResizeHeading("-")
endfunction


augroup RST
    autocmd!
    autocmd InsertLeave *.rst call ResizeHeadings()
augroup END
