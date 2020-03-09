" Last Change: 2020 mar 09
" Utility to store lsp/completion config
" I use omnifunc with default mappings (like <C-X><C-O>) but with <Tab> and <S-Tab> to choose
set omnifunc=v:lua.vim.lsp.omnifunc
" call lsp#set_log_level('debug')


" Server Configs {
lua << EOF
vim.cmd('packadd nvim-lsp')
nvim_lsp = require'nvim_lsp'
nvim_lsp.ccls.setup{}
nvim_lsp.rls.setup{}
nvim_lsp.ghcide.setup{}
EOF
" }

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <C-D> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
