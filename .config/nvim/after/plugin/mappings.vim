" Last Change: 2020 fév 29
vnoremap <silent> < <gv
vnoremap <silent> > >gv

nnoremap Q q:i

nnoremap <silent> yq :copen<CR>
nnoremap <silent> yQ :cclose<CR>

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

imap <expr><TAB>
			\ pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB>
			\ pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


inoremap <silent> <expr> <CR>
			\ mucomplete#neosnippet#expand_snippet("\<cr>")

nnoremap ' `
nnoremap ` '
nnoremap j gj
nnoremap k gk
