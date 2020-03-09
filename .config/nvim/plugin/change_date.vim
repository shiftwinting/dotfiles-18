function! UpdateLastMod()
    " Save window and cursor location:
    if expand('%:t:r') != 'change_date'
		let l:last_line = line('$') > 10 ? 10 : line('$')
        let l:winview = winsaveview()
        " Use rst's preferred format for the time:
        execute '1,' . l:last_line . 's/\mLast Change:\(\s*\).*/Last Change:\1' . strftime('%Y %b %d') . '/'
        " Restore window and cursor location:
        call winrestview(l:winview)
    endif
endfunction
