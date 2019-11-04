if !exists('g:loaded_undotree')
    finish
endif

" Undotree config
let g:undotree_SplitWidth=50
let g:undotree_WindowLayout=3
let g:undotree_SetFocusWhenToggle=1
nnoremap <silent> <Leader>u :UndotreeToggle<CR>
