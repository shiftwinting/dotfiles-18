" Last Change: 2020 Aug 13
" Utility to store lsp/completion config
" I use omnifunc with default mappings (like <C-X><C-O>) but with <Tab> and <S-Tab> to choose
set omnifunc=v:lua.vim.lsp.omnifunc
" call lsp#set_log_level('debug')

" Server Configs {
lua << EOF
local lsp_status = require('lsp-status')
lsp_status.register_progress()

vim.lsp.util.buf_diagnostics_virtual_text = function(_, _) return end

lsp_status.config{
  indicator_errors = 'E',
  indicator_warnings = 'W',
  indicator_info = 'I',
  indicator_hint = 'H',
  indicator_ok = '',
  status_symbol = '',
}


vim.cmd('packadd nvim-lsp')

local nvim_lsp = require'nvim_lsp'
nvim_lsp.util.default_config = vim.tbl_extend(
	"force",
	nvim_lsp.util.default_config,
	{ log_level = vim.lsp.protocol.MessageType.Info })


nvim_lsp = require'nvim_lsp'
nvim_lsp.ccls.setup{
	on_attach = lsp_status.on_attach,
	capabilities = lsp_status.capabilities
}
nvim_lsp.rust_analyzer.setup{
	on_attach = lsp_status.on_attach,
	capabilities = lsp_status.capabilities
}
nvim_lsp.ghcide.setup{}
EOF
" }

nnoremap <silent> <Leader>d    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-S-K> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g=    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <Leader>a    <cmd>lua vim.lsp.buf.code_action()<CR>

autocmd CursorHold * lua vim.lsp.util.show_line_diagnostics()
autocmd InsertLeave * pclose
