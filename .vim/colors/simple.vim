set background=dark
set termguicolors
highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "simple"

""" COLOR VARIABLES """

" Unique Colors
let BGC='#101010'
let cCursor='#D35400'
let line1='#505050'
let line2='#000000'

" RGB/CMYKW
let cRed='#C0392B'
let cGreen='#27AE60'
let cBlue='#2980B9'
let cCyan='#7AA085'
let cMagenta='#8E44AD'
let cYellow='#F39C12'
let cBlack='#2C3E50'
let cWhite='#BDC3C7'

" Bold/Bright RGB/CMYKW
let cBldBlack='#34495E'
let cBldRed='#E74C3C'
let cBldGreen='#2ECC71'
let cBldBlue='#3498DB'
let cBldCyan='#1ABC9C'
let cBldMagenta='#9B59B6'
let cBldYellow='#F1C40F'
let cBldBlack='#445b73'
let cBldWhite='#ECF0F1'

""" COLOR DEFINITIONS """

" example:
"exe ':hi Comment guifg=' . var

" Normal
exe ':hi Normal guifg=' . cWhite . ' guibg=' . BGC

" Comment
exe ':hi Comment guifg=' . cBldCyan

" Constant
exe ':hi Constant guifg=' . cBldRed
"exe ':hi String guifg=' . cMagenta
"exe ':hi Character guifg=' . cCursor
"exe ':hi Number guifg=' . cCursor
"exe ':hi Boolean guifg=' . cCursor
"exe ':hi Float guifg=' . cCursor

" Identifier
exe ':hi Identifier guifg=' . cBldMagenta
"exe ':hi Function guifg=' . cRed

" Statement
exe ':hi Statement guifg=' . cBldYellow
"exe ':hi Conditional guifg=' . cBldYellow
"exe ':hi Repeat guifg=' . cBldYellow
"exe ':hi Label guifg=' . cBldYellow
"exe ':hi Operator guifg=' . cRed
"exe ':hi Keyword guifg=' . cYellow
"exe ':hi Exception guifg=' . cYellow

" PreProc
exe ':hi PreProc guifg=' . cBlue
"exe ':hi Include guifg=' . cBlue
"exe ':hi Define guifg=' . cBlue
"exe ':hi Macro guifg=' . cBlue
"exe ':hi PreCondit guifg=' . cBlue

" Type
exe ':hi Type guifg=' . cGreen
"exe ':hi StorageClass guifg=' . cWhite
"exe ':hi Strucutre guifg=' . cWhite
"exe ':hi Typedef guifg=' . cWhite

" Special
exe ':hi Special guifg=' . cMagenta
"exe ':hi SpecialChar guifg=' . cWhite
"exe ':hi Tag guifg=' . cWhite
"exe ':hi Delimiter guifg=' . cWhite
"exe ':hi SpecialComment guifg=' . cWhite
"exe ':hi Debug guifg=' . cWhite

" Number line
set cursorline
exe ':hi CursorLine guibg=' . line2 . ' gui=none'
exe ':hi LineNr guifg=' . line1 . ' guibg=' . line2
exe ':hi CursorLineNr guifg=' . cCursor . ' guibg=' . line2
exe ':hi CursorLine guibg=' . line2 . ' cterm=bold

" Fold
exe ':hi Folded guibg=' . line2 . ' guifg=' . cCyan

" Visual
exe ':hi Visual guifg=' . cCyan . ' guibg=' . line2

" IncSearch
exe ':hi IncSearch guifg=' . cCyan . ' guibg=' . line2

" Search
exe ':hi Search guifg=' . line2 . ' guibg=' . cBldYellow
