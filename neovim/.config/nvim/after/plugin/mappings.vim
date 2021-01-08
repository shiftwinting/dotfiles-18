" Last Change: 2020 Nov 30
vnoremap <silent> < <gv
vnoremap <silent> > >gv

nnoremap <silent> yq :copen<CR>
nnoremap <silent> yQ :cclose<CR>

inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"

imap <expr><TAB> v:lua.tab_complete()
smap <expr><TAB> v:lua.tab_complete()

imap <expr><S-TAB> v:lua.s_tab_complete()
smap <expr><S-TAB> v:lua.s_tab_complete()

nnoremap <expr>K v:lua.K_help_hover()

imap <expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-TAB>"

nnoremap ' `
nnoremap ` '
nnoremap <silent> [p ]p
nnoremap <silent> <Leader><Leader> <C-^>

nnoremap <silent> <C-O> <C-O>zz
nnoremap <silent> <C-I> <C-I>zz

" Got from https://prettier.io/docs/en/vim.html
nnoremap gp :silent %!prettier --stdin-filepath % --trailing-comma all --single-quote<CR>

nnoremap <Leader>f <cmd>lua require'mem'.open()<CR>
