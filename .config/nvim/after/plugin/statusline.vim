" Last Change: 2020 mar 07

function! GitFileSummary() abort
    if ! exists('b:gitgutter')
        return ""
    else
        let l:git_summary = GitGutterGetHunkSummary()
        return "+".l:git_summary[0] . " ~".l:git_summary[1] . " -".l:git_summary[2]
    endif
endfunction

function! StatusLineActive()
    let l:status = "%1*%-5.{mode(5)}%*\ "
    let l:status .= "%#VertSplit#%2*%<%.50f%3*%m\ "
    let l:status .= "%4*%y%q%w%*%#VertSplit#%12.{GitFileSummary()}%="
    let l:status .= "%16.(%10.(%5*%l%6*/%LL%),\ %-5.(%5*%c%6*%V%)%)"
    let l:status .= "\ %10.P"

    return l:status
endfunction

function! StatusLineInactive()
    return "\ \ \ \ \ \ ./%<%.50f%m\ %y%q%w"
endfunction

augroup Wins
    autocmd!
    autocmd WinEnter * setlocal statusline=%!StatusLineActive()
    autocmd WinLeave * setlocal statusline=%!StatusLineInactive()
augroup END

" Pour avoir un bon defaut
set statusline=%!StatusLineActive()
