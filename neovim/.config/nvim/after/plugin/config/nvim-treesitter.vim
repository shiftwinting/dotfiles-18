" Last Change: 2020 Aug 31

if !exists('g:loaded_nvim_treesitter')
	finish
endif

lua require'ts-config'

hi! link TSParameter DraculaOrangeItalic
hi! link TSFuncBuiltin DraculaCyan
