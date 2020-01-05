" Plugin manager
let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3.7'

" packadd minpac
" 
" " Plugins {{{
" call minpac#init({'dir' : stdpath('data') . '/site'})
" 
" " Aspect {{{
" call minpac#add('dracula/vim', {'name' : 'dracula'})
" call minpac#add('ap/vim-css-color')
" " }}}
" 
" " Completions/lang/snippets {{{
" call minpac#add('autozimu/LanguageClient-neovim', {'branch': 'next', 'do': {-> system('bash install.sh')}})
" call minpac#add('Shougo/deoplete.nvim', {'do': {-> execute('UpdateRemotePlugins')}})
" call minpac#add('Shougo/neosnippet.vim', { 'branch': 'master' })
" call minpac#add('Shougo/neosnippet-snippets')
" " }}}
" 
" " Easy editting {{{
" call minpac#add('tpope/vim-unimpaired')
" call minpac#add('tpope/vim-surround')
" call minpac#add('tpope/vim-commentary')
" call minpac#add('junegunn/vim-easy-align')
" call minpac#add('jiangmiao/auto-pairs')
" call minpac#add('kkoomen/vim-doge')
" "}}}
" 
" " Enhanced features {{{
" " Plug 'junegunn/vim-peekaboo'
" call minpac#add('mbbill/undotree')
" call minpac#add('wellle/targets.vim')
" " }}}
" 
" call minpac#add('JamshedVesuna/vim-markdown-preview')
" call minpac#add('junegunn/vader.vim')
" call minpac#add('tpope/vim-dispatch')
" call minpac#add('vigoux/LanguageTool.nvim')
" 
" call minpac#add('udalov/kotlin-vim')


" Multi-entry selection UI {{{
" Damn c'est une tuerie ce truc
let OS=substitute(system('uname -s'),"\n","","")
if (OS == "Darwin")
    set rtp+=/usr/local/opt/fzf
elseif ( OS == 'Linux' )
    source /usr/share/vim/vimfiles/plugin/fzf.vim
endif
" call minpac#add('junegunn/fzf.vim')
" }}}

" Git support {{{
" call minpac#add('tpope/vim-fugitive')
" call minpac#add('airblade/vim-gitgutter')
" }}}

" Filetypes {{{
" call minpac#add('cespare/vim-toml')
" }}}

" }}}

" Options {{{

set number relativenumber                              " nombre hybrides (relatifs + absolu)
set noshowmode                                         " Don't echo -- NORMAL -- ect...
set hidden                                             " la masse de buffers, sauvés, pas sauvés belek a :qa
set cursorline                                         " Jolies couleurs pour le nombre absolu
set termguicolors                                      " Des jolies couleurs
set splitright                                         " Faire les splits à droite
set lazyredraw                                         " Performances ??
set nofoldenable                                       " "Si tu fold, c'est que c'est pas assez refactor" -- Léo Paquet, 2019
set spelllang=en,fr
set spellfile=~/.config/nvim/spell/correct.UTF-8.add
set textwidth=125
set colorcolumn=+0
set signcolumn=yes                                     " Pour eviter que ça clignotte à gauche
set scrolloff=5
set winblend=10 " Des fenetres flottantes transparentes, tro stylé
set updatetime=500

set inccommand=nosplit                                 " preview des recherches © Ensimag bb
set completeopt=preview,menuone,noinsert                           " j'ai pas encore tout compris
set list listchars=tab:>-,trail:•,nbsp:!,conceal::     " Afficher les caractères moches
set tags=.tags;/                                       " Chercher les tags dans les dossiers superieurs
set undofile                                           " Undo persistants
set grepprg="rg --vimgrep"                             " plus vite que grep

" For conceal markers.
set conceallevel=1 concealcursor=niv

" netrw
let g:netrw_liststyle=3
let g:netrw_list_hide = netrw_gitignore#Hide() . ',\(^\|\s\s\)\zs\.\S\+'

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


" Leader
let mapleader = "\<Space>"

" LocalLeader <-- A VOIR
let g:deoplete#enable_at_startup = 1

" }}}

packloadall
