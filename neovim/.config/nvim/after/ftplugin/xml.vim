" Last Change: 2020 Dec 08

function! s:updateLastMod()
	" Save window and cursor location:
  let l:winview = winsaveview()
  " Use rss's preferred format for the time:
  execute '%s/\m\(\s*<lastBuildDate>\).*\(<\/lastBuildDate>\)/\1' . strftime('%c %Z') . '\2/'
  " Restore window and cursor location:
  call winrestview(l:winview)
endfunction

autocmd BufWritePre *.xml call s:updateLastMod()
