if exists('AutoPairsDefine')
    let b:AutoPairs = AutoPairsDefine({"\\w\\zs<'" : '>'})
endif

set makeprg=cargo\ build\ --message-format\ short
let b:dispatch = "cargo test %:t:r"
