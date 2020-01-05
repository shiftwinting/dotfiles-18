function! UpdateLastMod()
    " Save window and cursor location:
    if expand('%:t:r') != 'change_date'
        let l:winview = winsaveview()
        " Use rst's preferred format for the time:
        execute '1,10s/\mLast Change:\(\s*\).*/Last Change:\1' . strftime('%Y %b %d') . '/'
        " Restore window and cursor location:
        call winrestview(l:winview)
    endif
endfunction
