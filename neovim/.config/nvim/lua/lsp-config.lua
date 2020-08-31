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
local protocol = require'vim.lsp.protocol'

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

-- texlab
local function texlab_attach()
  protocol.SymbolKind = {
    'file';
    'sec';
    'fold';
    '';
    'class';
    'float';
    'lib';
    'field';
    'label';
    'enum';
    'misc';
    'cmd';
    'thm';
    'equ';
    'strg';
    'arg';
    '';
    '';
    'PhD';
    '';
    '';
    'item';
    'book';
    'artl';
    'part';
    'coll';
  }
  protocol.CompletionItemKind = {
    'string';
    '';
    '';
    '';
    'field';
    '';
    'class';
    'misc';
    '';
    'library';
    'thesis';
    'argument';
    '';
    '';
    'snippet';
    'color';
    'file';
    '';
    'folder';
    '';
    '';
    'book';
    'article';
    'part';
    'collect';
  }
  lsp_status.on_attach()
end

nvim_lsp.texlab.setup{
  cmd = {vim.fn.expand("$HOME") ..'/.cargo/bin/texlab'},
  on_attach = texlab_attach,
  capabilities = lsp_status.capabilities
}

-- Completion and so on

local rt = function(codes)
	return vim.api.nvim_replace_termcodes(codes, true, true, true)
end

local call = vim.api.nvim_call_function

function tab_complete()
    if vim.fn.pumvisible() == 1 then
        return rt('<C-N>')
    elseif call('vsnip#available', {1}) == 1 then
        return rt('<Plug>(vsnip-expand-or-jump)')
    else
        return rt('<Tab>')
    end
end

function s_tab_complete()
    if vim.fn.pumvisible() == 1 then
        return rt('<C-P>')
    elseif call('vsnip#jumpable', {-1}) == 1 then
        return rt('<Plug>(vsnip-jump-prev)')
    else
        return rt('<S-Tab>')
    end
end
