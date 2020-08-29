" Last Change: 2020 août 07

if !exists('g:loaded_completion')
	finish
endif

let g:completion_auto_change_source = 1

let g:completion_chain_complete_list = {
			\'default' : {
			\	'default' : [{'complete_items' : ['lsp', 'snippet']}],
			\	'comment' : [],
			\	'string' : [{'mode' : 'file'}],
			\	},
			\'vim' : [
			\	{'mode' : 'cmd'},
			\	{'complete_items': ['snippet']}
			\	],
			\'c' : [
			\	{'complete_items': ['lsp', 'snippet']},
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

let g:completion_enable_snippet = 'vim-vsnip'

let g:complete_ts_highlight_at_point = 1

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
