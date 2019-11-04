if exists('AutoPairsDefine')
    let b:AutoPairs = AutoPairsDefine({"\\w\\zs<'" : '>'})
endif

if exists('LanguageClientStart')
    autocmd FileType rust call LanguageClient#textDocument_formatting_sync()
endif
