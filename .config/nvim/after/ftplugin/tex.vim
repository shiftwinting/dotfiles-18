setlocal spell
setlocal formatoptions+=tc
setlocal textwidth=80

if globpath('.', '?akefile*') ==? ''
    compiler latexmk
endif
