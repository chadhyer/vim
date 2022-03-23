set background=dark
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "simple_term"

:hi Normal ctermfg=white ctermbg=none
:hi Constant ctermfg=red
:hi Identifier ctermfg=magenta
:hi Statement ctermfg=yellow
:hi PreProc ctermfg=blue
:hi Type ctermfg=green
:hi Special ctermfg=darkmagenta
:hi CursorLine ctermbg='0'
:hi LineNr ctermfg=darkgrey
:hi CursorLineNr ctermfg=1 ctermbg=0
:hi CursorLine ctermbg=0 cterm=bold
:hi Folded ctermbg=0 ctermfg=darkcyan
:hi Visual ctermfg=cyan ctermbg=0
:hi IncSearch ctermfg=cyan ctermbg=0
:hi Search ctermfg=0 ctermbg=yellow
