" Last Change: 2019 nov 15
if !exists(':LanguageClientStart')
    finish
endif

let g:LanguageClient_autoStart=1
let g:LanguageClient_useVirtualText=0
let g:LanguageClient_completionPreferTextEdit=1
let g:LanguageClient_diagnosticsList='Location'
let g:LanguageClient_loggingFile = expand('~/.local/share/nvim/LanguageClient.log')
let g:LanguageClient_settingsPath = expand('~/.config/nvim/after/plugin/lc_settings.json')
let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')


" let g:EclimCompletionMethod = 'omnifunc'
" let g:deoplete#omni#input_patterns = {}
" let g:deoplete#omni#input_patterns.java = '[^. *\t]\.\w*'

" let g:LanguageClient_serverCommands = {
"     \ 'python': ["pyls"],
"     \ 'rust': ['rustup', 'run', 'stable', 'rls'],
"     \ 'c': ["ccls"],
"     \ 'groovy' : ["java", "-jar", "/Users/Thomas/Perso/groovy-language-server/build/libs/groovy-language-server.jar"],
"     \ 'kotlin' : ['/Users/Thomas/Perso/kotlin-language-server/server/build/install/server/bin/kotlin-language-server'],
"     \ 'lua' : ['lua-lsp']
"     \ }

" LanguageClient highlights
let g:LanguageClient_diagnosticsDisplay =
            \ {
            \     1: {
            \         "name": "Error",
            \         "texthl": "DraculaRed",
            \         "signText": ">>",
            \         "signTexthl": "DraculaRed",
            \         "virtualTexthl": "Error",
            \     },
            \     2: {
            \         "name": "Warning",
            \         "signText": "!!",
            \         "signTexthl": "DraculaYellow",
            \         "virtualTexthl": "Todo",
            \     },
            \     3: {
            \         "name": "Information",
            \         "signText": "I",
            \         "signTexthl": "ALEInfoSign",
            \         "virtualTexthl": "Todo",
            \     },
            \     4: {
            \         "name": "Hint",
            \         "signText": "H",
            \         "signTexthl": "ALEInfoSign",
            \         "virtualTexthl": "Todo",
            \     },
            \ }

" Functions
function! SetLSPShortcuts() abort
    nnoremap <buffer><silent> <leader>ld :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer><silent> K :call LanguageClient#textDocument_hover()<CR>
    nnoremap <buffer><silent> <leader>lr :call LanguageClient#textDocument_rename()<CR>
    nnoremap <buffer><silent> <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap <buffer><silent> <leader>lx :call LanguageClient#textDocument_references()<CR>
    nnoremap <buffer><silent> <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap <buffer><silent> <leader>lf :call LanguageClient#textDocument_codeAction()<CR>

    nnoremap <silent> <leader>ll :call LanguageClient_contextMenu()<CR>
    vnoremap <silent> <leader>ll :call LanguageClient_contextMenu()<CR>
endfunction

" Augroups
augroup LC
    autocmd!
    autocmd FileType python,c,c++,rust call SetLSPShortcuts()
    " autocmd BufWritePre *.py,*.c,*.h,*.cpp,*.rs call LanguageClient#textDocument_formatting_sync()
    autocmd BufWritePost *.py call GenerateTagsAsync(".") " Parceque pyls est nul a iech
    autocmd InsertLeave * silent! pclose! " Pour fermer la preview window a la fin de l'insertion
augroup END
