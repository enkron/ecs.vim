" Vim color file
" Maintainer:   Sergei Belokon <srj.belokon@gmail.com>
" Repository:   https://github.com/enkron/ecs.vim
" Last Change:  2024 Jan 31

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
set t_Co=256
let g:colors_name = "ecs"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               General                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Normal ctermfg=white ctermbg=NONE guifg=NONE

hi ModeMsg ctermfg=white ctermbg=black term=bold guifg=darkcyan
hi Cursor ctermfg=NONE guifg=NONE
hi LineNr ctermfg=darkgray ctermbg=NONE guifg=darkgray
hi CursorLine ctermfg=NONE ctermbg=darkgray cterm=NONE term=NONE guifg=NONE
hi CursorLineNr ctermfg=black ctermbg=darkgray cterm=bold term=bold guifg=black
hi Directory ctermfg=blue guifg=blue
hi ErrorMsg ctermfg=black ctermbg=red cterm=bold term=bold guifg=red
hi WarningMsg ctermfg=red ctermbg=NONE guifg=red
hi MatchParen ctermfg=darkcyan ctermbg=black cterm=bold term=bold guifg=darkcyan
hi MoreMsg ctermfg=black guifg=black
hi NonText ctermfg=grey guifg=grey
hi Search ctermfg=darkcyan ctermbg=darkgray cterm=bold term=bold guifg=darkgray
hi link IncSearch Search
hi StatusLine ctermbg=black ctermfg=lightgray guifg=lightgray
hi User1 ctermfg=black ctermbg=lightgray cterm=NONE guifg=black
hi User2 ctermfg=red ctermbg=lightgray cterm=NONE guifg=red
hi User3 ctermfg=black ctermbg=lightgray cterm=bold guifg=black
hi User4 ctermfg=lightgray ctermbg=black cterm=bold guifg=lightgray
hi User5 ctermfg=brown ctermbg=lightgray cterm=bold guifg=brown
hi VertSplit ctermfg=white ctermbg=NONE cterm=bold term=bold guifg=white
hi Visual ctermfg=darkcyan ctermbg=darkgrey cterm=bold term=bold guifg=blue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Syntax Highlighting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Comment ctermfg=grey cterm=italic guifg=grey
hi SpecialComment ctermfg=lightgrey cterm=italic guifg=lightgrey

hi Constant ctermfg=blue term=bold cterm=bold guifg=NONE
hi String ctermfg=white cterm=italic guifg=white
hi Character ctermfg=brown guifg=brown
hi Number ctermfg=brown guifg=brown
hi Boolean ctermfg=brown cterm=bold term=bold guifg=brown
hi Float ctermfg=brown cterm=bold term=bold guifg=brown

hi Pmenu ctermfg=grey ctermbg=black guifg=grey
hi PmenuSel ctermfg=darkblue ctermbg=black cterm=bold term=bold guifg=darkblue

hi Identifier ctermfg=darkblue ctermbg=NONE cterm=NONE term=NONE guifg=blue
hi Function ctermfg=white cterm=bold  guifg=white

hi Statement ctermfg=darkblue guifg=darkblue
hi link Conditional Statement
hi link Repeat Statement
hi link Exception Statement
hi link Label Statement

hi Operator ctermfg=darkmagenta cterm=bold term=bold guifg=darkmagenta
hi Keyword ctermfg=brown guifg=brown

hi Macro ctermfg=blue guifg=blue

hi PreProc ctermfg=darkblue cterm=bold guifg=darkblue
hi PreCondit ctermfg=blue guifg=blue
hi link Include PreProc
hi link Define PreProc

hi Type ctermfg=darkblue guifg=darkblue
hi link StorageClabluess Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=brown cterm=bold,italic term=bold guifg=brown
hi StorageClass ctermfg=darkmagenta cterm=bold term=bold guifg=darkmagenta

hi SpecialChar ctermfg=brown guifg=brown
hi Tag ctermfg=darkblue guifg=darkblue
hi Delimeter ctermfg=brown guifg=brown

hi SpecialKey ctermfg=brown cterm=bold term=bold guifg=brown
hi SpellBad ctermfg=red ctermbg=NONE guifg=white
hi SpellCap ctermfg=red ctermbg=NONE guifg=white
hi SpellRare ctermfg=red ctermbg=NONE guifg=white
hi SpellLocal ctermfg=red ctermbg=NONE guifg=white

hi Todo ctermfg=grey ctermbg=darkgrey cterm=bold,italic guifg=white
hi Error ctermfg=darkmagenta ctermbg=NONE cterm=italic guifg=darkmagenta

hi DiffChange ctermfg=white ctermbg=brown guifg=white

hi Folded ctermfg=white ctermbg=NONE cterm=bold guifg=black
