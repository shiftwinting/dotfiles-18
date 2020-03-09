" Last Change: 2020 mar 06
if !exists('g:loaded_mucomplete')
	finish
endif

autocmd CompleteDone * pclose

" Chains
let g:mucomplete#chains = {
			\ 'default': ['tags', 'nsnp'],
			\ 'rust' : {
			\		"default" : ['omni', 'nsnp'],
			\		"rustString.*" : [],
			\		"rustComment.*" : ['spel'],
			\		},
			\ 'c' : {
			\		"cComment.*" : [],
			\		"cString.*" : []
			\		},
			\ 'vim' : {
			\		'default' : ['cmd', 'nsnp', 'keyn'],
			\		'vimComment.*' : [],
			\		'vimString.*' : ['spel']
			\		},
			\ 'mail' : ['nsnp'],
			\ }

" let g:mucomplete#chains = {
" 			\ 'default': {
" 			\		'default' : ['tags', 'nsnp'],
" 			\		'.*String.*' : [],
" 			\		'.*Comment.*' : ['spel']
" 			\		},
" 			\ 'rust' :['omni', 'nsnp'],
" 			\ 'vim' : ['omni', 'nsnp']
" 			\ }

" Completion conditions
let s:rust_cond = { t -> t =~# '\%(\k\{3}\|::\|\.\)$' }
let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.rust = { 'omni' : s:rust_cond }
