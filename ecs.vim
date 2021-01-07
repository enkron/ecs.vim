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
hi Cursor ctermfg=NONE guifg=NONE
hi LineNr ctermfg=darkgrey ctermbg=NONE guifg=darkgrey
hi CursorLine ctermfg=NONE ctermbg=black cterm=NONE term=NONE guifg=NONE
hi CursorLineNr ctermfg=darkgrey ctermbg=black cterm=bold term=bold guifg=darkgrey
hi Directory ctermfg=67 guifg=67
hi ErrorMsg ctermfg=white ctermbg=red cterm=bold term=bold guifg=red
hi WarningMsg ctermfg=red ctermbg=NONE guifg=red
hi MatchParen ctermfg=white ctermbg=brown cterm=bold term=bold guifg=lightcyan
hi MoreMsg ctermfg=grey guifg=grey
hi NonText ctermfg=grey guifg=grey
hi Search ctermfg=white ctermbg=brown cterm=bold term=bold guifg=brown
hi link IncSearch Search
hi StatusLine ctermbg=gray ctermfg=black guifg=black
hi VertSplit ctermfg=black ctermbg=NONE cterm=bold term=bold guifg=black
hi Visual ctermfg=darkcyan ctermbg=black cterm=bold term=bold guifg=67

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Syntax Highlighting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Comment ctermfg=darkgrey guifg=darkgrey

hi Constant ctermfg=68 term=bold cterm=bold guifg=NONE
hi String ctermfg=lightgray guifg=lightgrey
hi Character ctermfg=brown guifg=brown
hi Number ctermfg=brown cterm=bold term=bold guifg=brown
hi Boolean ctermfg=brown cterm=bold term=bold guifg=brown
hi Float ctermfg=brown cterm=bold term=bold guifg=brown

hi Pmenu ctermfg=lightgray  ctermbg=black guifg=gray
hi PmenuSel ctermfg=68 ctermbg=black cterm=bold term=bold guifg=68

hi Identifier ctermfg=68 ctermbg=NONE cterm=NONE term=NONE guifg=blue
hi Function ctermfg=62 ctermbg=NONE guifg=62

hi Statement ctermfg=68 guifg=68
hi link Conditional Statement
hi link Repeat Statement
hi link Exception Statement
hi link Label Statement
hi Operator ctermfg=brown guifg=brown
hi Keyword ctermfg=brown guifg=brown

hi PreProc ctermfg=68 ctermbg=NONE cterm=bold term=bold guifg=68
hi link Include PreProc
hi link Define PreProc
hi link PreCondit PreProc

hi Type ctermfg=62 guifg=62
hi link StorageClabluess Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=brown cterm=bold term=bold guifg=brown
hi SpecialComment ctermfg=gray guifg=red
hi SpecialChar ctermfg=brown guifg=brown
hi Tag ctermfg=68 guifg=68
hi Delimeter ctermfg=brown guifg=brown

hi SpecialKey ctermfg=brown cterm=bold term=bold guifg=brown
hi SpellBad ctermfg=red ctermbg=NONE guifg=white
hi SpellCap ctermfg=red ctermbg=NONE guifg=white
hi SpellRare ctermfg=red ctermbg=NONE guifg=white
hi SpellLocal ctermfg=red ctermbg=NONE guifg=white

hi Todo ctermfg=white ctermbg=brown cterm=bold term=bold guifg=white
hi Error ctermfg=white ctermbg=darkred cterm=bold term=bold guifg=red

hi DiffChange ctermfg=white ctermbg=brown guifg=white
