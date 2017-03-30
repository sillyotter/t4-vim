if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 't4'
endif

" Include Java syntax
syn include @ttCs syntax/cs.vim

syn region ttString start=+"+ end=+"+
syn keyword ttCommandName contained include language debug extension hostspecific file template output assembly processor name 
syn region ttCode matchgroup=ttTag start=/<#\(+\|=\)*/  keepend end=/#>/ contains=@ttCs
syn region ttControl matchgroup=ttTag start=/<#\(@\)/  keepend end=/#>/ contains=ttCommandName,ttString

hi def link ttString String
hi def link ttTag Keyword
hi def link ttCommandName Keyword

if main_syntax == 't4'
  unlet main_syntax
endif

let b:current_syntax = "t4"

