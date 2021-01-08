" Last Change: 2020 Nov 23

if !exists('g:loaded_nvim_treesitter')
	finish
endif

lua require'ts-config'

" hi! link TSParameter DraculaOrangeItalic
" hi! link TSFuncBuiltin DraculaCyan
" hi! link TSKeywordFunction Function

hi! link TSStrong Type
hi! link TSEmphasis markdownBold
