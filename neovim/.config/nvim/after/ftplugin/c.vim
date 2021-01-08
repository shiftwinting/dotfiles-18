" Last Change: 2020 Nov 23

setlocal expandtab
setlocal textwidth=80 " Nvim uses this
setlocal tabstop=2
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldlevel=0

augroup CPerso
	autocmd!
	autocmd BufWrite *.c,*.h call GenerateTagsAsync('.')
augroup END

if !empty(findfile('.clang-format', ';'))
  setlocal formatprg=clang-format\ -style=file
endif
