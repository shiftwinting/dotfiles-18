" Last Change: 2020 août 06
vnoremap <silent> < <gv
vnoremap <silent> > >gv

nnoremap Q q:i

nnoremap <silent> yq :copen<CR>
nnoremap <silent> yQ :cclose<CR>

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

imap <expr><TAB>
			\ pumvisible() ? "\<C-n>" : 
			\ vsnip#available(1)  ? '<Plug>(vsnip-jump-next)' : "\<TAB>"
imap <expr><S-TAB>
			\ pumvisible() ? "\<C-p>" : "\<S-TAB>"


imap <expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-TAB>"

nnoremap ' `
nnoremap ` '
vnoremap <silent> J :move '>+1<cr>gv=gv
vnoremap <silent> K :m '<-2<cr>gv=gv
nnoremap <silent> <Leader><Leader> <C-^>

nnoremap <silent> <Leader><Leader> <C-6>

" Got from https://prettier.io/docs/en/vim.html
nnoremap gp :silent %!prettier --stdin-filepath % --trailing-comma all --single-quote<CR>
