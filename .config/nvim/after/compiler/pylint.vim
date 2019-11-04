" Vim pylint integration
if exists("current_compiler")
  finish
endif
let current_compiler = "pylint"

CompilerSet makeprg=pylint\ -sn\ --msg-template=\"{path}:{line}:\ [{msg_id}({symbol}),\ {obj}]\ {msg}\"\ %:p
CompilerSet errorformat=%f:%l:\ %m

