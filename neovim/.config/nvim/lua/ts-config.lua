local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.vim = {
  install_info = {
    url = "~/projects/tree-sitter-viml", -- local path or git repo
    files = {"src/parser.c", "src/scanner.c"}
  },
}

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,                    -- false will disable the whole extension
        -- use_languagetree = true,
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
    indent = { enable = false },
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
    playground = { enable = true },
    ensure_installed = {'rust', 'c', 'lua', 'query', 'fennel'} -- one of 'all', 'language', or a list of languages
}
