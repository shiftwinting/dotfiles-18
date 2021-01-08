" Last Change: 2021 Jan 08
setlocal spell
setlocal formatoptions+=tc
setlocal textwidth=100
set conceallevel=0
set foldmethod=marker
set foldmarker=%(,%)

normal zx

if globpath('.', '?akefile*') ==? ''
    compiler latexmk
endif
