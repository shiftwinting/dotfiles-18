local lsp_status = require('lsp-status')
lsp_status.register_progress()

lsp_status.config{
	indicator_errors = 'E',
	indicator_warnings = 'W',
	indicator_info = 'I',
	indicator_hint = 'H',
	indicator_ok = '',
	status_symbol = '',
}

vim.lsp.util.buf_diagnostics_virtual_text = function(_, _) return end
vim.cmd[[packadd nvim-lsp]]

local nvim_lsp = require'nvim_lsp'

-- Not sure this is useful
nvim_lsp.util.default_config = vim.tbl_extend(
	"force",
	nvim_lsp.util.default_config,
	{ log_level = vim.lsp.protocol.MessageType.Info }
)

nvim_lsp.ccls.setup{
	on_attach = lsp_status.on_attach,
	capabilities = lsp_status.capabilities
}

nvim_lsp.rust_analyzer.setup{
	on_attach = lsp_status.on_attach,
	capabilities = lsp_status.capabilities
}
nvim_lsp.ghcide.setup{}

local snippets = require'snippets'
snippets.use_suggested_mappings()
