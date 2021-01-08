" Last Change: 2020 Sep 22
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

setlocal makeprg=TEST_FILE=%:p\ make\ test
