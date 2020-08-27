" Last Change: 2020 Aug 27

if !exists('g:loaded_nvim_treesitter')
	finish
endif

lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,                    -- false will disable the whole extension
        disable = {},        -- list of language that will be disabled
    },
    incremental_selection = {
        enable = true,
        disable = {},
        keymaps = {                       -- mappings for incremental selection (visual mappings)
          init_selection = 'gnn',         -- maps in normal mode to init the node/scope selection
          node_incremental = "grn",       -- increment to the upper named parent
          scope_incremental = "grc",      -- increment to the upper scope (as defined in locals.scm)
          node_decremental = "grm",       -- decrement to the previous node
        }
    },
    refactor = {
      highlight_definitions = {
        enable = true
      },
      highlight_current_scope = {
        enable = true
      },
      smart_rename = {
        enable = false,
        keymaps = {
          smart_rename = "grr"            -- mapping to rename reference under cursor
        }
      },
      navigation = {
        enable = false,
        keymaps = {
          goto_definition = "gnd",        -- mapping to go to definition of symbol under cursor
          list_definitions = "gnD"        -- mapping to list all definitions in current file
        }
      }
    },
    ensure_installed = {'rust', 'c', 'lua', 'query'} -- one of 'all', 'language', or a list of languages
}
EOF

hi! link TSParameter DraculaOrangeItalic
hi! link TSFuncBuiltin DraculaCyan
