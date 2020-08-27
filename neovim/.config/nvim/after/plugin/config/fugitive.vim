" Last Change: 2020 Aug 27
if !exists("g:loaded_fugitive") || exists(":GCheckout") < 2
	finish
endif

nnoremap <Leader>g :Git<Space>
nnoremap <silent> <Leader>c :GCheckout<CR>
