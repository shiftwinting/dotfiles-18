function! FloatingCenteredWin() abort
    let buf = nvim_create_buf(v:false, v:true)

    " Adjust window size
    let height = float2nr(3 * &lines / 5)
    let width = float2nr(&columns - (&columns / 4))
    let col = float2nr((&columns - width) / 2)

    let opts = {
                \ 'relative': 'editor',
                \ 'row': &lines / 5,
                \ 'col': col,
                \ 'width': width,
                \ 'height': height,
                \ 'style' : 'minimal'
                \ }

    " Create window
    let win = nvim_open_win(buf, v:true, opts)
endfunction
