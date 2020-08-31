" Last Change: 2020 Aug 31

setlocal expandtab
setlocal tabstop=2
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldlevel=0

augroup CPerso
	autocmd!
	autocmd BufWrite *.c,*.h call GenerateTagsAsync('.')
augroup END
