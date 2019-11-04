if !exists('g:loaded_fugitive')
    finish
endif

function! IsGitRepo() abort
    return fugitive#head() !=? ""
endfunction

function! BranchStr() abort
    return fugitive#head()
endfunction

function! GitFileSummary() abort
    if (! IsGitRepo()) || (! IsRealFile())
        return ""
    else
        let l:git_summary = GitGutterGetHunkSummary()
        return "+".l:git_summary[0] . " ~".l:git_summary[1] . " -".l:git_summary[2]
    endif
endfunction

augroup Git
    autocmd!
    autocmd BufWritePost *.py,*.[ch] GitGutter
    autocmd FileType fugitive nnoremap <buffer> pp :Gpush<CR> | nnoremap <buffer> ff :Gpull<CR>
    autocmd FileType gitcommit start
augroup END
