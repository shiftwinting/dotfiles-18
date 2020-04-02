" Source : https://stackoverflow.com/a/3579112
" Usage : :call SwapWords({'foo':'bar'})
" Si / dans le mot: :call SwapWords({'foo/bar':'foo/baz'}, '@')

function! s:Mirror(dict)
    for [key, value] in items(a:dict)
        let a:dict[value] = key
    endfor
    return a:dict
endfunction

function! SwapWords(dict, ...) range
    let words = keys(a:dict) + values(a:dict)
    let words = map(words, 'escape(v:val, "|")')
    if(a:0 == 1)
        let delimiter = a:1
    else
        let delimiter = '/'
    endif
    let pattern = '\v(' . join(words, '|') . ')'
    exe a:firstline . ',' . a:lastline . 's' . delimiter . pattern . delimiter
        \ . '\=' . string(s:Mirror(a:dict)) . '[submatch(0)]'
        \ . delimiter . 'g'
endfunction

