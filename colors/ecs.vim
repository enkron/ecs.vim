" Vim color file
" Maintainer:   Sergei Belokon <srj.belokon@gmail.com>
" Repository:   https://github.com/enkron/ecs
" Last Change:  2020 Aug 29

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
hi Normal ctermfg=white ctermbg=234 guifg=white

hi ModeMsg ctermfg=darkcyan ctermbg=black term=bold guifg=darkcyan
hi Cursor cterm=reverse term=reverse guifg=NONE
hi LineNr ctermfg=darkgrey ctermbg=NONE guifg=darkgrey
hi CursorLine ctermfg=NONE ctermbg=black cterm=NONE guifg=NONE
hi CursorLineNr ctermfg=darkgrey ctermbg=black cterm=bold term=bold guifg=darkgrey
hi Directory ctermfg=darkblue guifg=darkblue
hi ErrorMsg ctermfg=white ctermbg=red cterm=bold term=bold guifg=red
hi WarningMsg ctermfg=red ctermbg=NONE guifg=red
hi MatchParen ctermfg=white ctermbg=brown cterm=bold term=bold guifg=lightcyan
hi MoreMsg ctermfg=grey guifg=grey
hi NonText ctermfg=grey guifg=grey
hi Search ctermfg=white ctermbg=brown cterm=bold term=bold guifg=brown
hi link IncSearch Search
hi StatusLine ctermbg=gray ctermfg=black guifg=black
hi VertSplit ctermfg=black ctermbg=NONE cterm=bold term=bold guifg=black
hi Visual ctermfg=lightblue ctermbg=black cterm=bold term=bold guifg=lightblue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Syntax Highlighting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Comment ctermfg=darkgrey guifg=darkgrey

hi Constant term=bold cterm=bold ctermfg=darkblue guifg=darkblue
hi String ctermfg=lightgrey guifg=lightgrey
hi Character ctermfg=brown guifg=brown
hi Number ctermfg=red cterm=bold term=bold guifg=red
hi Boolean ctermfg=brown cterm=bold term=bold guifg=brown
hi Float ctermfg=red cterm=bold term=bold guifg=red

hi Pmenu ctermfg=gray ctermbg=black guifg=gray
hi PmenuSel ctermfg=darkred ctermbg=black cterm=bold term=bold guifg=darkred

hi Identifier ctermfg=lightblue ctermbg=NONE cterm=NONE term=NONE guifg=blue
hi Function ctermfg=darkcyan ctermbg=NONE guifg=darkcyan

hi Statement ctermfg=lightblue guifg=lightblue
hi link Conditional Statement
hi link Repeat Statement
hi link Exception Statement
hi link Label Statement
hi Operator ctermfg=brown guifg=brown
hi Keyword ctermfg=brown guifg=brown

hi PreProc ctermfg=gray ctermbg=NONE cterm=bold term=bold guifg=gray
hi link Include PreProc
hi link Define PreProc
hi link PreCondit PreProc

hi Type ctermfg=darkred guifg=darkred
hi link StorageClabluess Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=brown cterm=bold term=bold guifg=brown
hi SpecialComment ctermfg=gray guifg=red
hi SpecialChar ctermfg=brown guifg=brown
hi Tag ctermfg=lightblue guifg=lightblue
hi Delimeter ctermfg=brown guifg=brown

hi SpecialKey ctermfg=brown cterm=bold term=bold guifg=brown
hi SpellBad ctermfg=white ctermbg=red cterm=bold term=bold guifg=white
hi SpellCap ctermfg=white ctermbg=red cterm=bold term=bold guifg=white
hi SpellRare ctermfg=white ctermbg=red cterm=bold term=bold guifg=white
hi SpellLocal ctermfg=white ctermbg=red cterm=bold term=bold guifg=white

hi Todo ctermfg=white ctermbg=brown cterm=bold,underline term=bold,underline guifg=white
hi Error ctermfg=white ctermbg=darkred cterm=bold term=bold guifg=red
