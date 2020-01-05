" Last Change: 

syntax region String start=/"/ skip=/\\"/ end=/"/
syntax region Comment start=/#/ end=/$/

syntax match Keyword /function/ nextgroup=Function
syntax match Keyword /end/
syntax match Keyword /source/
