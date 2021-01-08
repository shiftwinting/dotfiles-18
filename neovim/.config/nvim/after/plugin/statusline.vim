" Last Change: 2020 Nov 19

function! GitFileSummary() abort
    if ! exists('b:gitgutter')
        return ""
    else
        let l:git_summary = GitGutterGetHunkSummary()
        return "+".l:git_summary[0] . " ~".l:git_summary[1] . " -".l:git_summary[2]
    endif
endfunction

" Statusline
function! LspStatus() abort
	" if luaeval('#vim.lsp.buf_get_clients() > 0')
	" 	return luaeval("require('lsp-status').status()")
	" endif
	return ''
endfunction


function! StatusLineActive()
    let l:status = "%-6.{mode(6)}\ "
    let l:status .= "%<%.50f%m\ "
    let l:status .= "%y%q%w%{ObsessionStatus()}%12.{GitFileSummary()}\ %{LspStatus()}%="
    let l:status .= "%16.(%10.(%l/%LL%),\ %-5.(%c%V%)%)"
    let l:status .= "\ %10.P"

    return l:status
endfunction


function! StatusLineInactive()
    return "\ \ \ \ \ \ \ %<%.50f%m\ %y%q%w"
endfunction

augroup Wins
    autocmd!
    autocmd WinEnter * setlocal statusline=%!StatusLineActive()
    autocmd WinLeave * setlocal statusline=%!StatusLineInactive()
augroup END

" Pour avoir un bon defaut
set statusline=%!StatusLineActive()
