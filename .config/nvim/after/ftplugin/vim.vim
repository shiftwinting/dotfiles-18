let b:AutoPairs = {"(" : ")", "'": "'"}
set foldenable
set foldmethod=marker

autocmd BufWritePre *.vim call UpdateLastMod()
