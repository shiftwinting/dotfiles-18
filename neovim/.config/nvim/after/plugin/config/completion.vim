" Last Change: 2020 Dec 14

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
			\	],
			\'c' : [
			\	{'complete_items': ['lsp', 'snippet']},
			\	],
			\'lua' : [
			\	{'complete_items': ['ts', 'snippet']}
			\	],
			\'mem' : [
			\	{'complete_items': ['ts', 'snippet']}
			\	],
			\'java' : [
			\	{ 'mode' : 'omni', 'triggered_only': ['.', '::']},
			\	{ 'mode' : 'tags' },
			\	],
			\'groff' : [],
			\'mail' : [],
			\'vimwiki' : [],
      \'markdown': [
      \ { 'mode' : 'file' },
      \ { 'complete_items' : [ 'snippet' ] }
      \]
			\}

let g:completion_enable_snippet = 'vim-vsnip'

let g:vsnip_snippet_dir = expand("$HOME") . '/.config/nvim/snippets/'

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
