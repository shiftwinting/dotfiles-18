" Last Change: 2020 Sep 03
if !exists('g:loaded_templar')
	finish
endif

lua << EOF
local templar = require'templar'
templar.register('*.vim', '~/.config/nvim/templates/template.vim')
templar.register('*.h', '~/.config/nvim/templates/template.h')
templar.register('*.sh', '~/.config/nvim/templates/template.sh')
templar.register('*.lua', '~/.config/nvim/templates/template.lua')
EOF
