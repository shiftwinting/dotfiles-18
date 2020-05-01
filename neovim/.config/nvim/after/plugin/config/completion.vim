" Last Change: 2020 avril 30

if !exists('g:loaded_completion')
	finish
endif

" let g:completion_auto_change_source = 1

let g:completion_chain_complete_list = {
			\'default' : {
			\	'default' : [
			\		{'complete_items' : ['lsp', 'snippet']},
			\		{'mode' : 'file'}
			\	],
			\	'comment' : [],
			\	'string' : []
			\	},
			\'vim' : [
			\	{'complete_items': ['snippet']},
			\	{'mode' : 'cmd'}
			\	],
			\'c' : [
			\	{'complete_items': ['ts']},
			\	],
			\'lua' : [
			\	{'complete_items': ['ts']},
			\	{'complete_items': ['snippet']}
			\	],
			\'java' : [
			\	{ 'mode' : 'omni', 'triggered_only': ['.', '::']},
			\	{ 'mode' : 'tags' },
			\	],
			\'groff' : [],
			\'mail' : [],
			\'vimwiki' : []
			\}

let g:complete_ts_highlight_at_point = 1

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
