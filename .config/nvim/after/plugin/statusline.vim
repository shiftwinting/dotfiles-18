function! StatusLineActive()
    let l:status = "%1*%-5.{mode(5)}%*\ "
    let l:status .= "%<%.50f%m\ "
    let l:status .= "%y%q%w%12.{GitFileSummary()}%="
    let l:status .= "%13.{BranchStr()}"
    let l:status .= "%10.(%l,%c%V%)\ %10.P"

    return l:status
endfunction

function! StatusLineInactive()
    return "\ \ \ \ \ \ %<%.50f%m\ %y%q%w"
endfunction

augroup Wins
    autocmd!
    autocmd WinEnter * setlocal statusline=%!StatusLineActive()
    autocmd WinLeave * setlocal statusline=%!StatusLineInactive()
augroup END

" Pour avoir un bon defaut
set statusline=%!StatusLineActive()
