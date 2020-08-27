set omnifunc=v:lua.vim.lsp.omnifunc
set expandtab
augroup CPerso
	autocmd!
	autocmd BufWrite *.c,*.h call GenerateTagsAsync('.')
augroup END
