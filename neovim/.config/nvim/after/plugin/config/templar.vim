" Last Change: 2020 mar 08
if !exists('g:loaded_templar')
	finish
endif

call templar#register('*.vim', '~/.config/nvim/templates/template.vim')
call templar#register('*.h', '~/.config/nvim/templates/template.h')
call templar#register('*.sh', '~/.config/nvim/templates/template.sh')
