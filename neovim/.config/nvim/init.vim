" Last Change: 2020 Aug 28
" Plugin manager
let g:python_host_prog='/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

let OS=substitute(system('uname -s'),"\n","","")
if (OS == "Darwin")
    set rtp+=/usr/local/opt/fzf
elseif ( OS == 'Linux' )
    set rtp+=/usr/share/vim/vimfiles/plugin
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
set mouse=n
set previewheight=5

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab


" Leader
let mapleader = "\<Space>"

" }}}

language time POSIX
