local M = {}

if not pcall(require, 'telescope') then return end

local tele = require'telescope'

local tele_builtin = require'telescope.builtin'

local function lua_call(package, func_name, opts)
	return string.format(
		"<cmd>lua require'%s'.%s%s<CR>",
		package,
		func_name,
		string.gsub(vim.inspect(opts or {}), '%s', ''))
end

local function map(mode, lhs, rhs, opts)
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts or { silent = true, noremap = true})
end

map('n', '<Leader>e', lua_call('telescope.builtin', 'find_files'))
map('n', '<Leader>h', lua_call('telescope.builtin', 'help_tags'))
map('n', '<Leader>oc', lua_call('telescope.builtin', 'find_files', { cwd = '/home/thomas/.config/nvim' }))
map('n', '<Leader>b', lua_call('telescope.builtin', 'buffers'))
map('n', '<Leader>q', lua_call('telescope.builtin', 'quickfix'))
map('n', '<Leader>r', lua_call('telescope.builtin', 'live_grep'))
map('n', 'gR', lua_call('telescope.builtin', 'lsp_references'))
map('n', '<Leader>a', lua_call('telescope.builtin', 'lsp_code_actions'))
map('n', '<Leader>S', lua_call('tele-config', 'workspace_symbols'))
map('n', 'z=', lua_call('telescope.builtin', 'spell_suggest'))

local sorters = require'telescope.sorters'
local previewers = require'telescope.previewers'

tele.setup {
  defaults = {
    winblend = 10,
    results_height = 20,
    sorting_strategy = 'ascending',
    preview_cutoff = 0,
    generic_sorter = sorters.get_fzy_sorter,
    file_sorter = sorters.get_fzy_sorter,
    layout_strategy = 'center',
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
  }
}

tele.load_extension('fzy_native')

function M.workspace_symbols()
  local query = vim.fn.input('Query : ')

  tele_builtin.lsp_workspace_symbols { timeout = math.inf, query = query }
end

return M
