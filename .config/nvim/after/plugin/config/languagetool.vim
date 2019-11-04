let g:languagetool_server='$HOME/LanguageTool/languagetool-server.jar'
let g:languagetool = {
            \ '.' : {
            \       'disabledRules' : ''
            \ },
            \ 'text' : {
            \   'language' : 'en-GB'
            \ },
            \ 'python' : { 'language' : 'en-GB' }, 
            \ 'markdown' : { 'language' : 'fr' },
            \ 'tex' : {'language' : 'fr'}
            \ }

let g:languagetool_preview_flags = 'MC'
let g:languagetool_useFloatting = 1

let g:languagetool_debug = 1
map <silent> <Leader>p :LanguageToolErrorAtPoint<CR>

autocmd User LanguageToolCheckDone LanguageToolSummary
autocmd CursorHold * LanguageToolErrorAtPoint

hi LanguageToolGrammarError  guisp=#8be9fd gui=undercurl guifg=#8be9fd guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
hi LanguageToolSpellingError guisp=#ff5555  gui=undercurl guifg=#ff5555 guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none
