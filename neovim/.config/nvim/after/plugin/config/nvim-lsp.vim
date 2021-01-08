" Last Change: 2020 Nov 27
" Utility to store lsp/completion config

lua require'lsp-config'

nnoremap <silent> <Leader>d    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-S-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <Leader>= <cmd>lua vim.lsp.buf.formatting_sync()<CR>

" autocmd CursorHold,CursorHoldI * lua vim.lsp.util.show_line_diagnostics()
" autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync()
