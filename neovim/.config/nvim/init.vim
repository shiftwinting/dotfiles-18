" Last Change: 2021 Jan 07

let OS=substitute(system('uname -s'),"\n","","")
if (OS == "Darwin")
  let g:python_host_prog='/bin/python'
  let g:python3_host_prog = '/usr/bin/python3'
  set rtp+=/usr/local/opt/fzf
elseif ( OS == 'Linux' )
  let g:python_host_prog='/bin/python'
  let g:python3_host_prog = '/bin/python3'
  set rtp+=/usr/share/vim/vimfiles/plugin
  source /usr/share/vim/vimfiles/plugin/fzf.vim
endif

" I always need it
packadd termdebug
packadd packer.nvim
lua require"plugins"

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
set textwidth=100
set colorcolumn=+0
set signcolumn=yes:2                                   " Pour eviter que ça clignotte à gauche
set scrolloff=5
set winblend=10 " Des fenetres flottantes transparentes, tro stylé
set updatetime=500
set nowrap
set nocursorline
set mouse=n
set previewheight=10

set inccommand=nosplit                                 " preview des recherches © Ensimag bb
set completeopt=preview,menuone,noinsert                           " j'ai pas encore tout compris
set list listchars=tab:\|-,trail:•,nbsp:!,conceal::,precedes:<,extends:>    " Afficher les caractères moches
set tags=.tags;/                                       " Chercher les tags dans les dossiers superieurs
set undofile                                           " Undo persistants
set grepprg="rg --vimgrep"                             " plus vite que grep
set shortmess+=c

set sessionoptions-=buffers

" For conceal markers.
set conceallevel=1 concealcursor=niv

" netrw
let g:netrw_liststyle=3
let g:netrw_list_hide = netrw_gitignore#Hide() . ',\(^\|\s\s\)\zs\.\S\+'

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Leader
let mapleader = "\<Space>"
let maplocalleader = "&"

" }}}

au TextYankPost * silent! lua vim.highlight.on_yank {on_visual=false, higroup="Visual"}

lua require'colorizer'.setup()
lua require'mappings'

language time POSIX
