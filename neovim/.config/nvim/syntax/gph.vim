" Last Change: 2020 Dec 07
" Syntax colouring for gopher .gph files used by geomyidae
" Muddled about a bit by dive @ freenode / #gopherproject
" 2017-11-15

set shiftwidth=4
set tabstop=4
set noexpandtab

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

hi def link gopherComment           Comment
hi def link gopherType              Preproc
hi def link gopherURL               Statement
hi def link gopherHtml              Statement
hi def link gopherLink              Statement
hi def link gopherServerPort        Keyword
hi def link gopherBracket           Preproc
hi def link gopherPipe              Preproc
hi def link gopherCGI               Type
hi def link gopherCGI2              Type
hi def link gopherQuery             Type
hi def link gopherErr               Error
hi def link SynError                Error

" Format of lines:
"   [<type>|<desc>|<path>|<host>|<port>]

"<desc> = description of gopher item. Most printable characters should work.
"
"<path> = full path to gopher item (base value is "/" ). Use the "Err" path for
"items not intended to be served.
"
"<host> = hostname or IP hosting the gopher item. Must be resolvable for the
"intended clients. If this is set to "server" , the server's hostname is used.
"
"<port> = TCP port number (usually 70) If this is set to "port" , the default
"port of the server is used.

" Comments
syn region  gopherComment   start="<!--"   end="-->"

" URLs
syn match   gopherURL   "http:"
syn region  gopherLink  start="http:"lc=5 end="|"me=e-1
syn match   gopherURL   "gopher:"
syn match   gopherURL   "URL:"
syn match   gopherURL   "URI:"
syn region  gopherLink  start="gopher:"lc=7 end="|"me=e-1

" Pipes
syn match gopherPipe "|" containedin=gopherServerPort

" Queries and CGI
syn match gopherQuery "^\[7"lc=1
syn match gopherCGI "|[^|]*\.cgi[^|]*"lc=1
syn match gopherCGI2 "|[^|]*\.dcgi[^|]*"lc=1

" Server|Port
syn match gopherServerPort "|[^|]*|[^|]*]"

" Start and end brackets
match gopherBracket "[\[\]]"

" Entity
syn region  gopherType  start="^\[[0123456789ghHmswITi\+:;<PcMd\*\.]"lc=1 end="|" oneline

" HTML and networking
syn match gopherHtml "^\[[hHw8]"lc=1

" Text comments beginning with 't'
syn match gopherComment "^t"

" Err
syn match gopherErr "Err"
syn match gopherErr "^\[3"lc=1
