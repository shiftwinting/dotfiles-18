" Last Change: 2020 Aug 13
setlocal spell
setlocal formatoptions+=tc
setlocal textwidth=100

if globpath('.', '?akefile*') ==? ''
    compiler latexmk
endif
