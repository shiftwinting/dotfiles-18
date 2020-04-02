set omnifunc=v:lua.vim.lsp.omnifunc
augroup CPerso
	autocmd!
	autocmd BufWrite *.c,*.h call GenerateTagsAsync('.')
augroup END
