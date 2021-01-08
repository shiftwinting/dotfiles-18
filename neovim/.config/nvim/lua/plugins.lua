-- vim: et
return require"packer".startup(function(use)

  local function localuse(spec)
      local function path_trans(path)
          return '~/src/plugins/' .. string.gsub(path, ".+/", "")
      end

      if type(spec) == "string" then
          use(path_trans(spec))
      else
          local path = spec[1]
          spec[1] = path_trans(path)
          use(spec)
      end
  end

  use {'wbthomason/packer.nvim', opt = true}

  -- Basic
  use 'editorconfig/editorconfig-vim'
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          'nvim-lua/popup.nvim',
          'nvim-lua/plenary.nvim',
          'nvim-telescope/telescope-fzy-native.nvim'
      }
  }

  -- use { 'neovim/nvimdev.nvim', requires = {'neomake/neomake'}}

  -- Running things
  use {'tpope/vim-dispatch', opt = true, keys = {'m<CR>', '`<CR>'}, cmd = {'Make', 'Dispatch'}}
  use {'michaelb/sniprun', opt = true, cmd = { 'SnipRun' }, run = './install.sh' }

  -- tpope <3
  use 'tpope/vim-obsession'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  -- LSP related
  use {
    'nvim-lua/completion-nvim',
    requires = {
        'hrsh7th/vim-vsnip',
        'hrsh7th/vim-vsnip-integ',
        'neovim/nvim-lspconfig'
    }
  }

  -- Treesitter related
  localuse 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/completion-treesitter'
  use 'nvim-treesitter/nvim-tree-docs'
  use 'nvim-treesitter/playground'

  -- experiments for treesitter
  use 'bakpakin/fennel.vim'
  use 'Olical/aniseed'
  localuse 'vigoux/ratatoskr.nvim'

  -- Filetypes
  use 'cespare/vim-toml'
  use 'PProvost/vim-ps1'
  use 'tamarin-prover/editors'

  -- Git and version control
  use 'tpope/vim-fugitive'
  use {'stsewd/fzf-checkout.vim', cmd = {"GCheckout"}}

  -- Mine
  use 'vigoux/templar.nvim'
  use { 'vigoux/LanguageTool.nvim', opt = true }

  -- Misc
  localuse 'vim-conf-live/pres.vim'
  localuse 'vigoux/architext.nvim'
  localuse 'vigoux/mem.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- One true colorscheme
  use {'dracula/vim', as = 'dracula'}
  localuse 'vigoux/oak' -- Not sure it is that binary
end)
