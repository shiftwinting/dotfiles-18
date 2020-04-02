function! IsRealFile() abort
    return bufname("%") !=? ""
endfunction

function! GenerateTagsAsync(path) abort
    if empty(tagfiles())
        let l:cmd_str = "ctags -R " . a:path
    else
        let l:cmd_str = "ctags -f ". tagfiles()[0] . " -R " . a:path
    endif
    return jobstart(l:cmd_str)
endfunction

function! SetAsTitle(type) "{{{
    execute 'normal yypVr' . a:type
endfunction "}}}
