" Last Change: 2019 déc 10
" Utility to store lsp/completion config
" I use omnifunc with default mappings (like <C-X><C-O>) but with <Tab> and <S-Tab> to choose
set omnifunc=v:lua.vim.lsp.omnifunc
" call lsp#set_log_level('debug')

" Server Configs {
lua << EOF
nvim_lsp = require'nvim_lsp'
nvim_lsp.ccls.setup{}
nvim_lsp.rls.setup{}
nvim_lsp.ghcide.setup{}
EOF
" }


autocmd CompleteDone * pclose

function! LSPRename()
    let l:newName = input('Enter new name: ', expand('<cword>'))
    call v:lua.vim.lsp.buf_request(0, 'textDocument/rename', {'newName' : l:newName})
endfunction
