" Last Change: 2020 avril 22

if !exists('g:loaded_nvim_treesitter')
	finish
endif

lua << EOF
local ts = require'nvim-treesitter'
ts.setup('lua')
ts.setup('markdown')
EOF
