syntax region String start=/"/ skip=/\\"/ end=/"/
syntax region Comment start=/#/ end=/$/

syntax match Keyword /function/ nextgroup=Function
