" Last Change: 2020 Dec 08
function! s:UpdateLastMod()
	" Save window and cursor location:
	if expand('%:t:r') != 'change_date'
		let l:last_line = line('$') > 3 ? 3 : line('$')
		let l:winview = winsaveview()
		" Use rst's preferred format for the time:
		execute '1,' . l:last_line . 's/\mLast Change:\(\s*\).*/Last Change:\1' . strftime('%Y %b %d') . '/'
		" Restore window and cursor location:
		call winrestview(l:winview)
	endif
endfunction

setlocal foldenable
setlocal foldmethod=marker
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
autocmd BufWritePre *.vim call s:UpdateLastMod()
