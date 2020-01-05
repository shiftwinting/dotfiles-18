" Last Change: 2019 déc 13
vnoremap <silent> < <gv
vnoremap <silent> > >gv

nnoremap Q q:i

nnoremap <silent> yq :copen<CR>
nnoremap <silent> yQ :cclose<CR>

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! CleverTab()
    if pumvisible()
        return "\<C-N>"
    endif
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    " elseif neosnippet#expandable_or_jumpable()
    "     return "\<Plug>(neosnippet_expand_or_jump)"
    " elseif exists('&omnifunc') && &omnifunc != ''
    "     return "\<C-X>\<C-O>"
    else
        return "\<C-X>\<C-]>"
    endif
endfunction

inoremap <Tab> <C-R>=CleverTab()<CR>

imap <expr><TAB> CleverTab()
smap <expr><TAB> CleverTab()

nnoremap ' `
nnoremap ` '
nnoremap j gj
nnoremap k gk
