require'snippets-config'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

function handle_publish_diags(err, method, result, client_id, bufnr, config)
  vim.lsp.diagnostic.on_publish_diagnostics(err, method, result, client_id, bufnr, {
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  })

  vim.lsp.diagnostic.set_loclist {
    open_loclist = false,
    client_id = client_id,
    severity_limit = "Warning",
  }

  local loclist = vim.fn.getloclist(vim.fn.bufwinid(bufnr or 0))
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = handle_publish_diags
vim.cmd[[packadd nvim-lsp]]

local nvim_lsp = require'lspconfig'
local protocol = require'vim.lsp.protocol'

-- Not sure this is useful
nvim_lsp.util.default_config = vim.tbl_extend(
  "force",
  nvim_lsp.util.default_config,
  { log_level = vim.lsp.protocol.MessageType.Info }
)

nvim_lsp.ccls.setup{ capabilities = capabilities }
nvim_lsp.als.setup{ capabilities = capabilities }
nvim_lsp.rust_analyzer.setup{ capabilities = capabilities }
nvim_lsp.ghcide.setup{ capabilities = capabilities }
nvim_lsp.tsserver.setup{ capabilities = capabilities }

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
end

nvim_lsp.texlab.setup{
  cmd = {vim.fn.expand("$HOME") ..'/.cargo/bin/texlab'},
  on_attach = texlab_attach,
}

