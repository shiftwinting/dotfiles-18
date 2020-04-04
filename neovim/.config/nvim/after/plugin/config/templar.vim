" Last Change: 2020 avr 04
if !exists('g:loaded_templar')
	finish
endif

lua << EOF
local templar = require'templar'
templar.register('*.vim', '~/.config/nvim/templates/template.vim')
templar.register('*.h', '~/.config/nvim/templates/template.h')
templar.register('*.sh', '~/.config/nvim/templates/template.sh')
EOF
