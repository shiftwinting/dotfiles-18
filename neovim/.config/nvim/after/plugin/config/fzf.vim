if !exists('g:loaded_fzf')
    finish
endif

let g:fzf_buffers_jump = 1
let $FZF_DEFAULT_COMMAND='fd --type=file --color=never -L'
let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingCenteredWin()' }

let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Pmenu'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'Question'],
      \ 'bg+':     ['bg', 'Pmenu'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Pmenu'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }


function! s:FzfSpellSink(word)
  exe 'normal! "_ciw'.a:word
endfunction

function! FzfSpell()
  let suggestions = spellsuggest(expand("<cword>"))
  return fzf#run(fzf#wrap({'source': suggestions, 'sink': function("s:FzfSpellSink"), 'down':10}))
endfunction

command! -bang -nargs=? -complete=dir Files
            \call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -nargs=0 CHistory
            \ call fzf#vim#command_history()

nnoremap z= :call FzfSpell()<CR>
nnoremap <silent> <Leader>e :Files<CR>
nnoremap <silent> <leader>h :Helptags<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <Leader>t :Tags<CR>
nnoremap <silent> <Leader>c :Commits<CR>
nnoremap <silent> <Leader>oc :FZF ~/.config/<CR>
nnoremap <silent> <leader>q :CHistory<CR>
nnoremap <silent> <Leader>r :Rg<CR>
