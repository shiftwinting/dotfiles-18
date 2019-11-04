function! UpdateLastMod()
    " Save window and cursor location:
    let l:winview = winsaveview()
    language time en_US.utf8
    " Use rst's preferred format for the time:
    execute '1,10s/\mLast Change:\(\s*\).*/Last Change:\1' . strftime('%Y %b %d') . '/'
    " Restore window and cursor location:
    call winrestview(l:winview)
endfunction
